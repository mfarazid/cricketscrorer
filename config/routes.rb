Mccs::Application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: "welcome#welcome"
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only:[:create, :destroy]
  resources :users, only:[:edit, :update]

  get 'welcome/welcome', to: 'welcome#welcome'
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/signout', to: 'welcome#signout'  
  # You can have the root of your site routed with "root"
  root to: "welcome#welcome"

end
