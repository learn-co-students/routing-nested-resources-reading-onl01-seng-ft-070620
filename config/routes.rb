Rails.application.routes.draw do
  resources :authors, only: [:show] do
    # nested resource for posts (post belong to an author)
    resources :posts, only: [:index, :show]
    # equivalent to...
    # get 'authors/:id/posts', to: 'authors#posts_index'
    # get 'authors/:id/posts/:post_id', to: 'authors#post'
  end
  
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  root 'posts#index'
end
