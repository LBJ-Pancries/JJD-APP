class HouseAttachment < ApplicationRecord
  mount_uploader :attachment, HouseAttachmentUploader
  belongs_to :house
end
