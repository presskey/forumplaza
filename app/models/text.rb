class Text < ActiveRecord::Base
  attr_accessible :name, :description

  def self.content(name)
    find_by_name(name).try(:description).try(:html_safe)
  end
end
