class RemoveClickFromAds < ActiveRecord::Migration[5.2]
  def change
    remove_column :ads, :click, :integer
  end
end
