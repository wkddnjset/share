Rails.application.routes.draw do
  devise_for :users
  root 'event#index'

  get '/event' => 'event#index'
  get '/friend' => 'friend#index'
  get '/group' => 'group#index'

<<<<<<< HEAD
  get '/event/show/:id' => 'event#show'
  get '/friend/show/:id' => 'friendt#show'
  get '/group/show/:id' => 'group#show'
=======
  get '/event/show' => 'event#show'
  get '/friend/show' => 'friendt#show'
  get '/group/show' => 'group#show'
>>>>>>> a7bbc7a13ed4b359bc766308e3c5bf9970ef49b7

  post '/event/creat' => 'event#create'
  post '/friend/create' => 'friend#create'
  post '/group/create' => 'group#create'

end
