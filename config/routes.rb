Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch "/capture", to: "pokemons#capture"
  patch "/damage", to: "pokemons#damage"
  get "/", to: "home#index"
  get "/pokemon", to: "pokemons#new"
  patch "/pokemon", to: "pokemons#update"
  patch "/heal", to: "pokemons#heal"
end
