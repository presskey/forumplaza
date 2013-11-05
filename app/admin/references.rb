ActiveAdmin.register Reference do
  decorate_with ReferenceDecorator
  config.clear_sidebar_sections!

  index do
    column :name
    #column :description
    column :position
    default_actions 
  end
  form decorate:false do |f|                         
    f.inputs do       
      f.input :name                  
      f.input :description, as: :ckeditor
      f.input :image, as: 'file', :hint => reference.image? ? f.template.image_tag(reference.image.url(:pano)) : nil      
      f.input :image_cache, :as => :hidden     
      f.input :position 
    end                               
    f.actions                         
  end 
end
