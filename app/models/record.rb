class Record < ApplicationRecord
  has_many :accounts
  has_many :records, :through => :accounts
end
