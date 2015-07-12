
Rails.application.routes.draw do
  resources :articles

  resources :replies

  resources :comments

  resources :aritcles

  get 'sessions/new'
  
  get 'wishes/:id/comments' => 'wishes#comments'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get 'logout'  => 'sessions#destroy'
  get 'popular_wish' => 'wishes#popular_wish'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
  resources :wishes
  resources :lists
  resources :friends
end
 