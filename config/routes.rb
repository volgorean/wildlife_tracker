WildlifeTracker::Application.routes.draw do
  resources :sightings
  root 'sightings#index'
  match('sightings/new', {:via => :post, :to => 'sightings#create'})
  match('sightings/new', { :via => :get, :to => 'sightings#new'})
end
