Rails.application.routes.draw do
  root "authentication/users#new" # Carga la vista de registro al iniciar
  get "index", to: "authentication/users#index"
  post "send_email/:link_type", to: "authentication/users#send_request_email", as: "send_email"

  namespace :authentication do
    resources :users, only: [ :new, :create ] # Rutas para el registro
    resources :sessions, only: [ :new, :create ] # Asegúrate de que 'sessions' esté definido
  end
end
