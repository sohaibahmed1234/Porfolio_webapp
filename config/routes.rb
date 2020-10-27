Rails.application.routes.draw do
  get 'project/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'
  resources :pages

  resources  :job_applications
  resources :jobs
  resources :projects
  resources :leads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
