Rails.application.routes.draw do
  devise_for :users ,
  path: '/', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }, 
  :controllers => {registrations: 'registrations'} 
    
  	
  resources :likes, only: %i[create]
  resources :ranking, only: %i[index show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'welcome#index'
end
