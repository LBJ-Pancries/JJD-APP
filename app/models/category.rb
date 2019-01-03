class Category < ApplicationRecord
  has_many :houses
  has_many :diaries
  validates :name, presence: true
  mount_uploader :image, ImageUploader
  mount_uploaders :images, CategoryImageUploader
  serialize :images, JSON
end
