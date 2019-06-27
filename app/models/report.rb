class Report < ApplicationRecord
  belongs_to :ad
  validates :ad_id, presence: true
  validates :adspot_id, presence: true
end
