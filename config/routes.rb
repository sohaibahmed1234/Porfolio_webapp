require 'sidekiq/web'
Rails.application.routes.draw do
  get 'project/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  match '/terms' => 'pages#terms', :via => [:get, :post]
  root 'pages#index'
  resources :pages

  resources  :job_applications
  resources :jobs
  resources :projects
  resources :leads

  mount Sidekiq::Web => '/sidekiq'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
