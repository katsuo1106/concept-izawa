Rails.application.routes.draw do
  root to: "wires#top"
  patch 'reset', to: 'wires#reset'
  patch 'allchumon', to: 'wires#allchumon'
  resources :wires,only: [:index, :new, :create, :show, :edit, :update]
end
 