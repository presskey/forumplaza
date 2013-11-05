class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :photo, :photo_cache, :post, :position
  mount_uploader :photo, ImageUploader

  default_scope order('position desc')
end
