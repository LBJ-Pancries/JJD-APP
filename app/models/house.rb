class House < ApplicationRecord
  validates :title, presence: true
  belongs_to :category, :optional => true
  scope :recent, -> { order("created_at DESC")}
  mount_uploaders :images, HouseImageUploader
  serialize :images, JSON
  has_many :attachments, :class_name => "EventAttachment", :dependent => :destroy
  accepts_nested_attributes_for :attachments, :allow_destroy => true, :reject_if => :all_blank
end
