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

  resources :cities do
    member do
      post :update_temp
      post :update_temperature
      post :update_weather
      post :update_wind
      post :update_date
    end
  end

  resources :categories do
    resources :houses
  end

  resources :facilities

  resources :houses

  root 'facilities#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
