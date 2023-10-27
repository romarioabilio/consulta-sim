Rails.application.routes.draw do
  resources :consulta
  resources :medicos
  resources :pacientes do
    resources :enderecos
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
