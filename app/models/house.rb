class House < ApplicationRecord
  validates :title, presence: true
  belongs_to :category, :optional => true
end
