class AddClickToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :click, :integer
  end
end
