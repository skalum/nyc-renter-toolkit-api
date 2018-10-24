Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    resources :addresses
    resources :users, only: [:create]
    post '/auth', to: 'auth#login'
  end
end
