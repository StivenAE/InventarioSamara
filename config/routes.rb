Rails.application.routes.draw do
  resources :checkatris
  resources :reportes
  resources :clienteremis
  resources :licenses
  resources :hojavidas
  resources :remisions, except: [:delete]
  devise_for :users

  root 'inicio#index'

  resources :checkatris do
    collection do
      post :import
    end
  end

end
