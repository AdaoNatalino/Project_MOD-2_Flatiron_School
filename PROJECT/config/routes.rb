Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :members
  resources :buildings
  resources :locations
  resources :oaths
  resources :attendances
  resources :cults
  resources :meetings

  #get '/', to: 'cults#start'
end
