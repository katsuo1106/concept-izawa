Rails.application.routes.draw do
  root to: "wires#concept"
  get 'izawa', to: 'wires#izawa'
  patch 'reset', to: 'wires#reset'
  patch 'ikkatsu', to: 'wires#ikkatsu'

  resources :wires,only: [:new, :create, :show, :edit, :update] do
    member do
      get 'izawachumon'
      get '_izawachumon'
      get 'conceptseisan'
      patch 'update2'
    end
  end


end
 