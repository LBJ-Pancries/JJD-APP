Rails.application.routes.draw do
  devise_for :users
  resources :houses
  root 'houses#index'
  resources :categories do
    resources :houses
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
