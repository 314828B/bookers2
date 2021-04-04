Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
  resources :books
  resources :users do
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  get 'home/about' , to: 'homes#about', as: 'home/about'
  root to: 'homes#top'
  resources :book, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
    resource :relationships, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
end
