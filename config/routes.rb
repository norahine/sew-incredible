# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users

	resources :blueprints
  resources :contacts, only: [:new, :create]

  get 'main/about'
	root 'blueprints#index'
end
