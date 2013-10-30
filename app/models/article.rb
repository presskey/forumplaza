# encoding: utf-8
class Article < ActiveRecord::Base
  attr_accessible :name, :description, :visible, :kind, :image, :image_cache
  mount_uploader :image, ImageUploader

  KINDS = %w/article news/
  KIND_LABELS = {article: 'статья', news: 'новость'}

  scope :articles, -> { where(kind: 'article') }
  scope :news,     -> { where(kind: 'news') }
  scope :visible,  -> { where(visible: true) }
end
