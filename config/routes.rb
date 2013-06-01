Triang::Application.routes.draw do
  resources :matches, except: :show

  resources :categories

  resources :teams

  root :to => 'home#index'
end
