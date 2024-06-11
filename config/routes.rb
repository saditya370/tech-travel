Rails.application.routes.draw do
  mount Avo::Engine, at: Avo.configuration.root_path
  root 'blogs#index'
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users
  resources :blogs
end
