Rails.application.routes.draw do


  # get 'image/new'
  # get 'image/create'
  # get 'image/destroy'
  # post 'image/create'


  root 'albums#index'
  get 'images/new'

  resources :albums do
    resources :images
  end

  post '/album/:id/images/:id' , to: 'image#new'
  post '/album/1/image' , to: 'image#new'
  post '/image' , to: 'image#new'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
