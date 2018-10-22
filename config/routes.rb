Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items
  end
  devise_for :users

  root 'todo_lists#index'
  resources :categories do
    resources :houses
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
