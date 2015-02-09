Rails.application.routes.draw do
  root to: 'site#index'

  get 'site/index'

  get 'site/signup'

  get 'site/login'

  get 'site/contact'

  get 'site/about'

  get '/tasks', to: 'tasks#index'
  
  get '/tasks/new', to: 'tasks#new'

  get '/tasks/:id', to: 'tasks#show'

  post "/tasks", to: "tasks#create"



end
