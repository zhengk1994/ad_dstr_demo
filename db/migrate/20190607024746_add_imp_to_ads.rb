class AddImpToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :imp, :integer
  end
end
