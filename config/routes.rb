Rails.application.routes.draw do


  get 'admin/update'

  get 'admin/delete'

  get 'review/new'

  get 'review/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :restaurants, except: [:update, :destroy]
  namespace :admin do
    resources :restaurants, only: [:update, :destroy]
  end
end
