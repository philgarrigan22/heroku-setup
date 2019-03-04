# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Books resource
  get '/books' => 'books#index'

  # Patients resource
  get '/patients' => 'patients#index'
  get '/patients/:id' => 'patients#show'

  # Patients resource
  get '/ingredients' => 'ingredients#index'
end
