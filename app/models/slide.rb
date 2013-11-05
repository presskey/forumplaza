class Slide < ActiveRecord::Base
  attr_accessible :image, :image_cache
  mount_uploader :image, ImageUploader
end
