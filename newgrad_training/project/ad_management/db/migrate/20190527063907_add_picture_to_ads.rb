class AddPictureToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :picture, :string
  end
end
