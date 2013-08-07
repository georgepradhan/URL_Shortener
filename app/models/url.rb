class Url < ActiveRecord::Base
  require 'digest/sha1'

  before_save :generate_short_url

  private
  def generate_short_url
    self.short_url = (Digest::SHA1.hexdigest self.long_url)[0..6]
  end

end
