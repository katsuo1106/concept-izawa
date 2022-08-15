Rails.application.routes.draw do
  root to: "wires#top"
  patch 'reset', to: 'wires#reset'
  resources :wires,only: [:index, :new, :create, :show, :edit, :update]
end
