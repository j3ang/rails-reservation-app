App::Application.routes.draw do
  resources :reservations

  # You can have the root of your site routed with "root"
  root 'reservations#index'


end
