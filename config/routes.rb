Rails.application.routes.draw do
  resources :works
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'pages#home'

end
