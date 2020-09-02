Rails.application.routes.draw do
  resources :universes do 
    resources :characters, only: :create
  end
  resources :characters, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
