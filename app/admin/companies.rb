ActiveAdmin.register Company do
  decorate_with CompanyDecorator
  config.clear_sidebar_sections!

  index do
    column :name
    column :description
    column :position
    default_actions 
  end

  form decorate: false do |f|                         
    f.inputs do       
      f.input :name
      f.input :description             
      f.input :logo, as: 'file', :hint => f.object.company.logo? ? f.template.image_tag(f.object.company.logo.url) : nil    
      f.input :logo_cache, :as => :hidden
      f.input :position
    end                               
    f.actions                         
  end 
end
