class Category < ApplicationRecord

  has_many :houses, dependent: :destroy

  validates :name, presence: true
  mount_uploader :image, ImageUploader
end
