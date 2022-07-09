Rails.application.routes.draw do
  root to: "home#index"

  get '/user', to: 'user#new'
  get '/tickets', to: 'tickets#index'
end
