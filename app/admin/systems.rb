# encoding: utf-8
ActiveAdmin.register System do
  config.clear_sidebar_sections!

  scope 'Все', :all, :default => true
  scope 'Промышленные', :industrial
  scope 'Бытовые', :home

  index do
    column :name
    #column :description
    column :kind do |system| 
      System::KIND_LABELS[system.kind.to_sym]
    end
    column :company
    default_actions 
  end

  form do |f|                         
    f.inputs do       
      f.input :company, collection: Company.all, include_blank: false 
      f.input :name                  
      f.input :description               
      f.input :kind, collection: System::KINDS.map {|k| [System::KIND_LABELS[k.to_sym], k]}, include_blank: false 
    end                               
    f.actions                         
  end 
end
