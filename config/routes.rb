Rails.application.routes.draw do
  root "user#index"
  resources :users

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
end
