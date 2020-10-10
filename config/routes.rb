Rails.application.routes.draw do
  resources :bookmarks, only: [:create, :index]
  resources :attendings, only: [:create, :index]
  resources :events, only:[:create, :index]
resources :sessions, only: [:create]
resources :registrations, only: [:create, :index]
delete :logout, to: "sessions#logout"
get :logged_in, to: "sessions#logged_in"
root to: "static#home" 
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
