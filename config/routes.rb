PersonalBrand::Application.routes.draw do

  root :to => 'blog#index'

  resources :posts
  resource  :resume,          :only => [:show]
  resource  :portfolio,       :only => [:show] 
  resources :portfolio_items, :except => [:index]

  controller :pages do
    match '/about', :to => :show, :id => 'about'
    match 'pages/:id', :to => :show
  end

  match '/signin',  :to => 'sessions#new',     :as => 'signin'
  match '/signout', :to => 'sessions#destroy', :as => 'signout'
  resources :sessions, :only => [:create]

end
