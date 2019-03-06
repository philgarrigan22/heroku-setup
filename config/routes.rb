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
  # get '/books' => 'books#index'
  # post '/books' => 'books#create'
  resources :books, except: %i[new edit]

  # appointments resource
  resources :appointments, except: %i[new edit]

  # Patients resource
  # get '/patients' => 'patients#index'
  # get '/patients/:id' => 'patients#show'
  # post '/patients' => 'patients#create'
  # patch '/patients/:id' => 'patients#update'
  # delete '/patients/:id' => 'patients#destroy'
  resources :patients, except: %i[new edit]

  # Patients resource
  resources :doctors, except: %i[new edit]

  # ingredients resource
  get '/ingredients' => 'ingredients#index'
  get '/ingredients/:id' => 'ingredients#show'
  post '/ingredients' => 'ingredients#create'
  patch '/ingredients/:id' => 'ingredients#update'

  # Recipes resource
  resources :recipes, except: %i[new edit]
end
