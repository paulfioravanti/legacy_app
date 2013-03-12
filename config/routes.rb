LegacyApp::Application.routes.draw do
  resources :images, except: [:show] do
    resources :featured_images, only: [:new, :create]
  end
  root to: 'pages#home'
end
#== Route Map
# Generated on 13 Mar 2013 00:34
#
# new_image_featured_image GET    /images/:image_id/featured_images/new(.:format) featured_images#new
#                   images GET    /images(.:format)                               images#index
#                          POST   /images(.:format)                               images#create
#                new_image GET    /images/new(.:format)                           images#new
#               edit_image GET    /images/:id/edit(.:format)                      images#edit
#                    image PUT    /images/:id(.:format)                           images#update
#                          DELETE /images/:id(.:format)                           images#destroy
#                     root        /                                               pages#home
