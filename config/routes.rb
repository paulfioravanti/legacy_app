LegacyApp::Application.routes.draw do
  resources :images, except: [:show] do
    resources :featured_images, only: [:new, :create]
  end
  root to: 'pages#home'
end
