WildlifeTracker::Application.routes.draw do
  resources :sightings
  root 'sightings#index'
  match('sightings/new', {:via => :post, :to => 'sightings#create'})
  match('sightings/new', { :via => :get, :to => 'sightings#new'})
  match('sightings/:id', {:via => :delete, :to => 'sightings#destroy'})

  match('species/new', {:via => :post, :to => 'species#create'})
  match('species/new', { :via => :get, :to => 'species#new'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('regions/new', {:via => :post, :to => 'regions#create'})
  match('regions/new', {:via => :get, :to => 'regions#new'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})
end
