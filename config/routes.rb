ActionController::Routing::Routes.draw do |map|

  map.root      :controller => :home
  
  map.resources :posts
  
  map.resource  :resume, :only => [:show]
  
  map.resource  :portfolio, :only => [:show]
  map.resources :portfolio_items, :except => [:index]

end
