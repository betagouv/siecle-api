Rails.application.routes.draw do
  resources :fichiers_xml, only: [:create]
  root to: "pages#index"
end
