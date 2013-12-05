class Company < ActiveRecord::Base
  attr_accessible :description, :logo, :logo_cache, :name, :position
  mount_uploader :logo, ImageUploader

  default_scope order('position desc')
end
