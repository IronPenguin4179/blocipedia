Rails.application.routes.draw do
  
  devise_for :users
  resources :users
  resources :charges, only: [:new, :create, :destroy]
  resources :collaborators
  resources :wikis do
    resources :collaborators, only: [:new, :create, :destroy]
  end
  get 'about' => 'welcome#about'
  root 'welcome#index'
  
end
