Rails.application.routes.draw do
  devise_for :users
  root 'event#index'

  get '/event' => 'event#index'
  get '/friend' => 'friend#index'
  get '/group' => 'group#index'

  get '/event/show' => 'event#show'
  get '/friend/show' => 'friendt#show'
  get '/group/show' => 'group#show'

  post '/event/creat' => 'event#create'
  post '/friend/create' => 'friend#create'
  post '/group/create' => 'group#create'

end
