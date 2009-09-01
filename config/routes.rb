ActionController::Routing::Routes.draw do |map|

  map.root :controller => :home
  map.resources :posts
  map.resource :resume, :only => [:show]

end
