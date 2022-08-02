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
    # Defines the root path route ("/")
  end
  resources :bank_accounts
  resources :nominees
    devise_for :users
  

  root "bank_accounts#index"
end