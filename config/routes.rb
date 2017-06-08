Rails.application.routes.draw do
  # For details on the DSL available within this file, 
  # see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :works, except: [:show]
  get 'work:id', to: 'works#show'
  
  resources :blogs

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

end
