Rails.application.routes.draw do
  # localhost:3000/api/tutorials
  post '/api/tutorials', to: 'tutorials#create'
  # localhost:3000/api/tutorials
  get '/api/tutorials', to: 'tutorials#index'
  # localhost:3000/api/tutorials/1
  get '/api/tutorials/:id', to: 'tutorials#show'
  # localhost:3000/api/tutorials/1
  put '/api/tutorials/:id', to: 'tutorials#update'
  # localhost:3000/api/tutorials/1
  delete '/api/tutorials/:id', to: 'tutorials#destroy'
  # localhost:3000/api/tutorials
  delete '/api/tutorials', to: 'tutorials#destroy'
  # localhost:3000/api/tutorials?title=[keyword]
  get '/api/tutorials?title=[keyword]', to: 'tutorials#title[keyword]' #show action
  #resources :tutorials
end
