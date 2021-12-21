Rails.application.routes.draw do
  resources :given_taunts
  resources :text_taunts
  resources :available_taunts
  resources :records
  resources :wagers
  resources :challenges
  get 'challenges/:id/join', to: 'challenges#join', as: :join_challenges
  resources :profiles
  resources :identities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "challenges#index"
end
