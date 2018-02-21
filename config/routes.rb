Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:update, :destroy] do
    resources :reviews, only: [:create, :new]
  end
  # namespace :admin do
  #   resources :restaurants, only: [:update, :destroy]
  # end
end
