class Company < ActiveRecord::Base
  attr_accessible :description, :logo, :logo_cache, :name
  mount_uploader :logo, ImageUploader
end
