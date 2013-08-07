class AddDefaultToCounter < ActiveRecord::Migration
  def change
    change_column_default(:urls, :counter, 0)
  end
end
