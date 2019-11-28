Rails.application.routes.draw do
  root to: 'welcome#home'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # get '/logout', to: 'sessions#destroy'
  # get '/', to: 'welcome#home'
end
