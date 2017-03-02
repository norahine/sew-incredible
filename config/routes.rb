Rails.application.routes.draw do
  get 'main/about'

	resources :blueprints

	root 'blueprints#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
