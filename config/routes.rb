Rails.application.routes.draw do
  root to: "wires#top"
  resources :wires,only: [:index, :new, :create]
end
