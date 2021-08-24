Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :sibitts
  root 'sibitts#index'
end
