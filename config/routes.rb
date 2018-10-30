Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  devise_for :users
  resources :posts
  resources :groups

  root 'groups#index'
  resources :categories do
    resources :houses
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
