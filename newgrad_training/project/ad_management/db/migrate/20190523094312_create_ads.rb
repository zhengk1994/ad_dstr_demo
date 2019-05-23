class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :body
      t.string :img
      t.string :price
      t.string :url

      t.timestamps
    end
  end
end
