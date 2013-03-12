LegacyApp::Application.routes.draw do
  resources :images, except: [:show] do
    resources :featured_images
  end
  root to: 'pages#home'
end
