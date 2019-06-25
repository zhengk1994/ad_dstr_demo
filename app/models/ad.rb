class Ad < ApplicationRecord
  has_many :reports
  mount_uploader :picture, PictureUploader
  validates :body, presence: true
  validates :price, presence: true, numericality: { greater_than: 0}
  validates :url, presence: true, uniqueness: {case_sensitive: false}

end
