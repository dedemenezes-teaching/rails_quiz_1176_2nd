Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # verb '/path', to: 'controller#action'
  # get "/search", to: "songs#search"
  get "/songs/named/:name", to: "songs#search"
  resources :songs do
    resource :reviews, only: [:new, :create]
  end
  # # CRUD
  # # CREATE - 1 see the form 2 submit the form
  # get '/songs/new', to: 'songs#new' #=> TO DISPLAY THE FORM
  # post '/songs', to: 'songs#create'

  # # READ - 1 read all or 2 read one
  # get '/songs', to: 'songs#index'
  # get '/songs/:id', to: 'songs#show' #=> /songs/12345

  # # UPDATE - 1 see the form 2 submit the form
  # get '/songs/:id/edit', to: 'songs#edit' #=> TO DISPLAY THE FORM
  # patch '/songs/:id', to: 'songs#update'

  # # DELETE
  # delete '/songs/:id', to: 'songs#destroy'


end
