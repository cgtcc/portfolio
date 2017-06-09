Rails.application.routes.draw do
  # For details on the DSL available within this file, 
  # see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

# except: define exceptions in the ressource routes
  resources :works, except: [:show]
  get 'work/:id', to: 'works#show', as: 'work_show'

  resources :blogs do #this function toggle status (published / draft) of blog posts (see index.html.erb)
    member do
      post :toggle_status
    end
  end
  

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

end
