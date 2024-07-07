Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: 'admin/sessions'
  }
  
  namespace :admin do
    get 'dashboards', to: 'dashboards#index'
    resources :users, only: [:destroy]
  end
  
  root to: "homes#top"
  devise_for :users
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  
  get 'homes/about' => "homes#about", as: 'about'
end
