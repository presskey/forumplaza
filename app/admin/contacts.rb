ActiveAdmin.register Contact do
  decorate_with ContactDecorator
  config.clear_sidebar_sections!

  index do
    column :name
    column :post
    column :phone
    column :email
    column :position
    default_actions 
  end

  form decorate: false do |f|                         
    f.inputs do       
      f.input :name
      f.input :post
      f.input :phone
      f.input :email                
      f.input :photo, as: 'file', :hint => f.object.contact.photo? ? f.template.image_tag(f.object.contact.photo.url) : nil    
      f.input :photo_cache, :as => :hidden  
      f.input :position
    end                               
    f.actions                         
  end 
end
