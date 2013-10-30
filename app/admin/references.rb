ActiveAdmin.register Reference do
  decorate_with ReferenceDecorator
  config.clear_sidebar_sections!

  index do
    column :name
    column :description
    default_actions 
  end
  form decorate:false do |f|                         
    f.inputs do       
      f.input :name                  
      f.input :description, as: :ckeditor
      f.input :image, as: 'file', :hint => reference.image? ? f.template.image_tag(reference.image.url(:pano)) : nil      
      f.input :image_cache, :as => :hidden      
    end                               
    f.actions                         
  end 
end
