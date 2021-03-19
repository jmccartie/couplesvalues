Rails.application.routes.draw do
  get 'home/index'
  get 'exercise/index'

  resources :results, only: [:show, :create]

  root to: 'home#index'
end
