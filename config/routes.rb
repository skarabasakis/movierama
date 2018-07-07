Rails.application.routes.draw do
  devise_for :users, path: 'account'
  
  root to: 'movies#index'
end
