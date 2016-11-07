require 'api_constraints'

AnimalShelter::Application.routes.draw do
  resources :animals
  #Api definition
  namespace :api, defaults: { format: :json },
  constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1,
    constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resorces here
    end
    # We are going to list our resources here
  end
end
