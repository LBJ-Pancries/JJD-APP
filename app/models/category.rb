class Category < ApplicationRecord
  has_many :houses
  validates :name, presence: true
  mount_uploader :image, ImageUploader
  mount_uploaders :images, CategoryImageUploader
  serialize :images, JSON
end
