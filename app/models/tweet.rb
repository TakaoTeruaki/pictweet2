class Tweet < ApplicationRecord
  validates :text, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
end
