ActiveAdmin.register Text do
  config.clear_sidebar_sections!
  actions :all, except: [:destroy]

  index do
    column :name
    column :description
    default_actions 
  end

  form do |f|                         
    f.inputs do       
      f.input :name                  
      f.input :description, as: :ckeditor    
    end                               
    f.actions                         
  end 
end
