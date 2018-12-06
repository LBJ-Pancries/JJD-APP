class Diary < ApplicationRecord
  has_many :accounts
  has_many :records, :through => :accounts
  belongs_to :city, :optional => true
end
