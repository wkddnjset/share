Rails.application.routes.draw do
  devise_for :users
  root 'event#index'

  get '/event' => 'event#index'
  get '/friend' => 'friend#index'
  get '/group' => 'group#index'

  get '/event/show/:id' => 'event#show'
  get '/friend/show/:id' => 'friendt#show'
  get '/group/show/:id' => 'group#show'

  post '/event/create' => 'event#create'
  post '/friend/create' => 'friend#create'
  post '/group/create' => 'group#create'

  post '/friend/post' => 'friend#post'
  delete '/friend/destroy' => 'friend#destroy'
end
