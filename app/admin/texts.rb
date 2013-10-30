ActiveAdmin.register Text do
  config.clear_sidebar_sections!
  actions :all, except: [:destroy]

  index do
    column :name
    column :description
    default_actions 
  end
end
