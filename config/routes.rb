Rails.application.routes.draw do
  resources :series_data
  post 'search', to: 'series_data#search'
  post 'quiz', to: 'series_data#quiz'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :series_data, only: [:index,:create]
end
