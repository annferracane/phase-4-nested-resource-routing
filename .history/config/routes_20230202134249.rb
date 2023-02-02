Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dog_houses, only: [:show] do
  # nested resource for reviews
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show, :index, :create]
end
