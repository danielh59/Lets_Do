Rails.application.routes.draw do
  get 'experts/index'
  get 'experts/show'
  get 'experts/edit'
  get 'experts/update'
  get 'doers/edit' 
  get 'doers/update'
  post "regimens/new" =>  'regimens#create'
  

  root to: 'pages#home'


  devise_for :doers, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'get_started' }
  devise_for :experts, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'get_started' }
   
  resources :doers, :controller => "doers"
  resources :experts, :controller => "experts"


  resources :doers, only: [:show, :update] 

  resources :experts


  resources :regimens
  resources :categories, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
