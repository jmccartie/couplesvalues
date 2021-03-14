Rails.application.routes.draw do
  get 'home/index'
  get 'exercise/index'
  post 'exercise/create'

  resources :results, only: [:show]

  root to: 'home#index'
end
