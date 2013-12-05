# encoding: utf-8
ActiveAdmin.register Article do
  decorate_with ArticleDecorator
  config.clear_sidebar_sections!

  scope 'Все', :all, :default => true
  scope 'Статьи', :articles
  scope 'Новости', :news
  scope 'Видимые на главной', :visible

  index do
    column :name
    #column :description
    column :kind do |article| 
      Article::KIND_LABELS[article.kind.to_sym]
    end
    column :visible do |article| 
      article.visible? ? status_tag('Да', :green) : status_tag('Нет')
    end
    column :position
    default_actions 
  end

  form decorate: false do |f|                         
    f.inputs do       
      f.input :name                  
      f.input :description, as: :rich#, input_html: { ckeditor: {extraPlugins: 'uploadcare'} }              
      f.input :kind, collection: Article::KINDS.map {|k| [Article::KIND_LABELS[k.to_sym], k]}, include_blank: false
      f.input :image, as: 'file', :hint => f.object.article.image? ? f.template.image_tag(f.object.article.image.url(:thumb)) : nil    
      f.input :image_cache, :as => :hidden  
      f.input :visible
      f.input :position
    end                               
    f.actions                         
  end 
end
