class Maigo < ApplicationRecord
  belongs_to :user
  validates :image,:name,:address, presence: true
  has_many :comments
  
mount_uploader :image, ImageUploader
end
