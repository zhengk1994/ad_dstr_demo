class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :imp
      t.integer :click
      t.float :ctr
      t.integer :cpm
      t.integer :totalcost
      t.integer :ad_id
      t.integer :adspot_id

      t.timestamps
    end
  end
end
