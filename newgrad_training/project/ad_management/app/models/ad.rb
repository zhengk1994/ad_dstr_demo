class Ad < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :body, presence: true
  validates :price, presence: true
  validates :url, presence: true

end
