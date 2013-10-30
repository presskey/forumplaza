class Reference < ActiveRecord::Base
  attr_accessible :name, :description, :image, :image_cache
  mount_uploader :image, ImageUploader
end
