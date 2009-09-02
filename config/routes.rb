ActionController::Routing::Routes.draw do |map|

  map.root      :controller => :home
  
  map.resources :posts
  
  map.resource  :resume, :only => [:show]
  
  map.resource  :portfolio, :only => [:show]
  map.resources :portfolio_items, :except => [:index]
  
  map.with_options(:controller => :pages, :action => :show) do |pages|
    pages.connect '/about', :id => 'about'
    pages.connect '/contact', :id => 'contact'
    pages.connect '/pages/:id'
  end

end
