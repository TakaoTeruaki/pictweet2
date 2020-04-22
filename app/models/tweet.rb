class Tweet < ApplicationRecord
  validates :text, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
