# encoding: utf-8
class System < ActiveRecord::Base
  attr_accessible :name, :description, :kind, :company_id

  belongs_to :company

  KINDS = %w/industrial home/
  KIND_LABELS = {
    industrial: 'промышленные',
    home: 'бытовые'
  }

  scope :industrial, -> { where(kind: 'industrial') }
  scope :home,       -> { where(kind: 'home') }
end
