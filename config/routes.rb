Rails.application.routes.draw do
  resources :fichiers_xml, only: [:create]
  resources :etablissements, only: [:index, :show]
  root to: "pages#index"
end
