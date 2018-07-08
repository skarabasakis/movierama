Rails.application.routes.draw do
  devise_for :users, path: 'account'
  
  root to: 'movies#index'
  resources :users, only: [:show]

  namespace 'user', path: 'your' do
    resources :movies, only: [:new, :create]
  end
end
