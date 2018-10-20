class House < ApplicationRecord
  validates :title, presence: true
  belongs_to :category, :optional => true
  scope :recent, -> { order("created_at DESC")}
end
