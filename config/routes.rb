Rails.application.routes.draw do
  resources :user

  resources :post do
    resources :comment
  end

  resources :comment do
    resources :comment
  end
end
