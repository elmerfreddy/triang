Triang::Application.routes.draw do
  resources :categories

  resources :teams

  root :to => 'home#index'
end
