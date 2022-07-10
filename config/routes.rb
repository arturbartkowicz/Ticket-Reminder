Rails.application.routes.draw do
  root to: "home#index"

  get 'user', to: 'user#new'
  post 'user', to: 'user#create'
  delete 'user/:id', to: 'user#destroy'

  get 'tickets', to: 'tickets#new'
  post 'tickets', to: 'tickets#create'
  delete 'tickets/:id', to: 'tickets#destroy'
end
