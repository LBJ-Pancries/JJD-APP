Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  resources :diaries
  devise_for :users

  resources :groups do
    resources :posts
  end

  root 'groups#index'

  resources :cities do
    member do
      post :update_temp
    end
  end
  
  resources :categories do
    resources :houses
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
