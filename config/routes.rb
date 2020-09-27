Rails.application.routes.draw do
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: %i[show index]
  end

  resources :posts, only: %i[index show new create edit update]

  root 'posts#index'
end
