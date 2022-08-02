Rails.application.routes.draw do
 
  namespace :admin do
      resources :users
      resources :bank_accounts
      resources :nominees

      root to: "users#index"
    end
    devise_scope :user do
      # Redirests signing out users back to sign-in
      get "users", to: "devise/sessions#new"
    end
  
    devise_for :users
  

  # Defines the root path route ("/")
  # root "articles#index"
end
