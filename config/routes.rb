require 'sidekiq/web'

Rails.application.routes.draw do

  namespace :admin do
    resources :sells
    resources :campaigns
    resources :discounts
    resources :services
    resources :products
    resources :suppliers
    resources :clients
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
end
