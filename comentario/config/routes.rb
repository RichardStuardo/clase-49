Rails.application.routes.draw do
 # get 'comments/index'

  #get 'comments/create'
  resources :comments, only: [:index, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
