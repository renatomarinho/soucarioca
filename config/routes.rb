Rails.application.routes.draw do

  resources :users
  root to: 'visitors#index'

  get '/page/about' => 'visitors#about'
  get '/page/byebye' => 'visitors#byebye'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/auth/signin' => 'sessions#new', :as => :signin
  get '/auth/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'




  get '/authenticate' => 'visitors#authenticate'

  get ':username' => 'users#show'

  get '/user/search' => 'users#search'
  get '/user/profile' => 'users#index'
  get '/user/username' => 'users#username'

  post '/user/username_update' => 'users#username_update'

  post '/user/vote_like' => 'users#vote_like'
  post '/user/vote_dislike' => 'users#vote_dislike'




end
