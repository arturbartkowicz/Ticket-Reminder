Rails.application.routes.draw do
  root to: "home#index"

  get '/user', to: 'user#new'
  post '/user', to: 'user#create'
  get '/tickets', to: 'tickets#index'
end
