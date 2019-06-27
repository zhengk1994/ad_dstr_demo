class ChangeColumnToAdsPrice < ActiveRecord::Migration[5.2]
  def change
    change_column :ads, :price, :integer
  end
end
