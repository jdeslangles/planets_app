PlanetsApp::Application.routes.draw do

  # get '/planets', to: 'planets#index'
  # get '/planets', to: 'worlds#index', as: 'space_rocks'

  resources :planets


end
