class Account < ApplicationRecord
  belongs_to :diary
  belongs_to :record
end
