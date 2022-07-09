Rails.application.routes.draw do
  root to: "home#index"

  get '/users', to: 'users#index'
  get '/tickets', to: 'tickets#index'
end
