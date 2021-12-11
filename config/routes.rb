Rails.application.routes.draw do
    root "welcome#index"

    get "/sessions/login", to: "sessions#index"
    post "/sessions/login", to: "sessions#login"

    
    resources :products
    resources :stores
    get "/users/created", to: "users#created"
    resources :users
end
