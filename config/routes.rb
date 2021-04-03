Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users
  get 'home/about' , to: 'homes#about', as: 'home/about'
  root to: 'homes#top'
  resources :book, only: [:new, :create, :index, :show, :destroy] do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
 
  end

end
