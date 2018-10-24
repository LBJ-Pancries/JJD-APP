class Category < ApplicationRecord

  has_many :houses

  validates :name, presence: true
  mount_uploader :image, ImageUploader
end
