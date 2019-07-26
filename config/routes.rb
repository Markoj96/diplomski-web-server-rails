Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  resources :users, only: [:create] do
    post :authenticate, on: :collection
  end

  resources :vehicles, only: [:index, :show]
end
