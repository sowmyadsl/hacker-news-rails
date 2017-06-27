Rails.application.routes.draw do
  root to: "posts#index"

  devise_for :users
  resources :posts do
    resources :comments, module: :posts
  end

  resources :comments do
    resources :comments, module: :comments
  end

end
