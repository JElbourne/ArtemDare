Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :themes do
    member do
      get "upvote", to: "themes#upvote"
      get "downvote", to: "themes#downvote"
    end
  end
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
