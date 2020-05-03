class Maigo < ApplicationRecord
  belongs_to :user
  validates :image,:name,:address, presence: true
  
mount_uploader :image, ImageUploader
end
