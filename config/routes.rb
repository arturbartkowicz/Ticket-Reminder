Rails.application.routes.draw do
  root to: "home#index"

  get '/users', to: 'user#index'
end
