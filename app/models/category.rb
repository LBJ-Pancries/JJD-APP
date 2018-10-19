class Category < ApplicationRecord
  validates :name, presence: true
  has_many :houses
  mount_uploader :image, ImageUploader
end
