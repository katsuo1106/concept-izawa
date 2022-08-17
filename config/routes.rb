Rails.application.routes.draw do
  root to: "wires#concept"
  get 'izawa', to: 'wires#izawa'
  patch 'reset', to: 'wires#reset'
  patch 'ikkatsu', to: 'wires#ikkatsu'

  resources :wires,only: [:index, :new, :create, :show, :edit, :update]
end
 