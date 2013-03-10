ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pages', :action => 'home'

  map.resources :images, :except => :show do |image|
    image.resources :featured_images
  end
end
