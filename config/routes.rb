Triang::Application.routes.draw do
  resources :teams

  root :to => 'home#index'
end
