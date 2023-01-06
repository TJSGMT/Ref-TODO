Rails.application.routes.draw do
  resources :users
  resources :todo_items
  root to: 'todo_items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
