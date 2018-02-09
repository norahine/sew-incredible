Rails.application.routes.draw do
  devise_for :users
  get 'main/about'

	resources :blueprints
  resources :contacts

	root 'blueprints#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
