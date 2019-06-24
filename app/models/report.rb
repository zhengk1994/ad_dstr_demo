class Report < ApplicationRecord
  validates :ad_id, presence: true
  validates :adspot_id, presence: true
  validates :imp, presence: true
  validates :click, presence: true
  validates :ctr, presence: true
  validates :cpm, presence: true
  validates :date, presence: true
  validates :totalcost, presence: true
end
