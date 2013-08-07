class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_url, :short_url
      t.integer :counter

      t.timestamps
    end
  end
end

