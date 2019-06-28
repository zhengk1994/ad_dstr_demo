class AddDetailsToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :ad_body, :string
  end
end
