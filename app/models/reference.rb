class Reference < ActiveRecord::Base
  attr_accessible :name, :description, :image, :image_cache, :position
  mount_uploader :image, ImageUploader

  default_scope order('position desc')
end
