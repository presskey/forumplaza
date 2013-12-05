Fplaza::Application.routes.draw do

  mount Rich::Engine => '/rich', :as => 'rich'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :references
  resources :articles
  resources :systems do
    collection do
      get :industrial
      get :home
    end
  end
  
  %w/about design dispatch service contacts/.each do |action|
    get action => "main##{action}"
  end

  root :to => 'main#index'
end
