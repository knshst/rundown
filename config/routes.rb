Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :posts do
    resources :comments
    collection do
      get 'search'
    end
  end
  resources :users
  get 'welcome/error'
end
