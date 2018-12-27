Rails.application.routes.draw do
  resources :clienteremis
  resources :licenses
  resources :hojavidas
  resources :remisions, except: [:delete]
  devise_for :users

  root 'inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
