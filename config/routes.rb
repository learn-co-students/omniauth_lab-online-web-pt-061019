Rails.application.routes.draw do
  # Add your routes here
  # get 'sessions/create'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # get '/home', to: 'welcome#home'
  # get '/auth/github/callback' => 'sessions#create'
  root 'welcome#home'
end
