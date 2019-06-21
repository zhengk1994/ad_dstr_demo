class RemoveImpFromAds < ActiveRecord::Migration[5.2]
  def change
    remove_column :ads, :imp, :string
  end
end
