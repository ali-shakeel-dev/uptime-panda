Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: {
    sign_in: "login",
    sign_out: "logout",
    sign_up: "register",
  }

  resources :monitors
  get "status", to: "status#index"
  get "notifications", to: "notifications#index"
  root "home#index"
end
