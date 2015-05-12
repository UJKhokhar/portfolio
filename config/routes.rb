Rails.application.routes.draw do
  devise_for :users

  resources :works, only: [:show] 

  root to: 'welcome#index'
end
