Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root to: "pages#index"
  #resources :users, only:[:index]

  resources :typeincidents
  resources :roles
  resources :users
  resources :incidents
  resources :registries

  
end
