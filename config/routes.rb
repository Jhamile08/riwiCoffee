Rails.application.routes.draw do
  get "index", to: "authentication/users#index"
  post "send_email/:link_type", to: "authentication/users#send_request_email", as: "send_email"

  namespace :authentication do
    resources :users, only: [ :new, :create ] # Asegúrate de que aquí esté el espacio de nombres
    resources :sessions, only: [ :new, :create ]
  end
end
