get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  #instantiate a URL object and in doing so generates short url (via before_save method)
  long_url = params[:long_url].gsub(/http:\/\//, '')
  url = Url.new
  url.long_url = long_url
  url.save
  @short = url.short_url
  erb :index
end

get '/:short_url' do
  row = Url.find_by_short_url(params[:short_url])
  row.counter = row.counter + 1
  row.save
  redirect "http://#{row.long_url}"
end
