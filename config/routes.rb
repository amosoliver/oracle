Rails.application.routes.draw do
  resources :r_lotacoes_organizacionais
  resources :r_estruturas_organizacionais
  resources :r_organizacionais
  resources :r_contrato_servidores
  resources :r_cargos
  resources :g_pessoas
  resources :r_tipos_organizacionais
  resources :i_predios do
    resources :i_ambientes_prediais, shallow: true
  end
  resources :g_municipios
  resources :g_estados
  resources :g_paises
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
