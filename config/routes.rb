Rails.application.routes.draw do
  get 'home/index'
  get 'exercise/index'
  post 'exercise/create'

  root to: 'home#index'
end
