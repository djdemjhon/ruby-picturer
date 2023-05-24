Rails.application.routes.draw do

  root to: 'pictures#index'
  
  get 'pictures/upload', to: 'pictures#upload' 
  post '/pictures', to: 'pictures#create'
  get '/pictures/:id', to: 'pictures#show', as: 'picture'
  get '/pictures/:id/edit', to: 'pictures#edit', as: 'edit_picture'
  patch '/pictures/:id', to: 'pictures#update'
  delete '/pictures/:id', to: 'pictures#delete' 


end
