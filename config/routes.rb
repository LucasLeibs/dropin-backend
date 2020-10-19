Rails.application.routes.draw do
  resources :comments, only: [:create,:show,:index, :destroy]
  resources :attendings, only: [:create, :index, :show, :destroy]
  resources :events, only:[:create, :index, :show, :destroy]
resources :sessions, only: [:create]
resources :registrations, only: [:create]
resources :users, only: [:index, :update, :show]
delete :logout, to: "sessions#logout"
get :logged_in, to: "sessions#logged_in"
root to: "static#home" 
post :uploadfile, to: "file#create"
get :uploadfile, to: "file#index"
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
