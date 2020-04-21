Rails.application.routes.draw do

  resources :users, only:[:new, :create, :show]
  get '/', to:'welcome#home', as:'root'
  get '/signin', to:'sessions#new', as:'signin'
  post '/signin', to:'sessions#create'
  delete '/logout', to:'sessions#destroy', as:'logout'
  resources :attractions
  resources :rides


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
