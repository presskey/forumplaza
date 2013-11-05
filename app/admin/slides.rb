ActiveAdmin.register Slide do
  decorate_with SlideDecorator
  config.clear_sidebar_sections!

  index as: :grid, columns: 1 do |slide|
    link_to(image_tag(slide.image.url), admin_slide_path(slide))
  end
  form decorate:false do |f|                         
    f.inputs do       
      f.input :image, as: 'file', :hint => slide.image? ? f.template.image_tag(slide.image.url) : nil      
      f.input :image_cache, :as => :hidden      
    end                               
    f.actions                         
  end 
end
