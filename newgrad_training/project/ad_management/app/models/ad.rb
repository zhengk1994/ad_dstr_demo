class Ad < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :body, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 20, less_than_or_equal_to: 30}
  validates :url, presence: true, uniqueness: {case_sensitive: false}

end
