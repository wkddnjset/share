Rails.application.routes.draw do
  devise_for :users
  root 'event#index'

  get '/event' => 'event#index'
  get '/friend' => 'friend#index'
  get '/friend_admin' => 'friend#index_admin'
  get '/group' => 'group#index'

  get '/event/show/:id' => 'event#show'
  get '/friend/show/:id' => 'friendt#show'
  get '/group/show/:id' => 'group#show'

  post '/event/create' => 'event#create'
  post '/friend/create' => 'friend#create'
  post '/friend/create_admin' => 'friend#create_admin'
  post '/group/create' => 'group#create'

  post '/friend/post' => 'friend#post'
  post '/friend/post_admin' => 'friend#post_admin'

  delete '/friend/destroy' => 'friend#destroy'
  delete '/friend/destroy_admin' => 'friend#destroy_admin'
end
