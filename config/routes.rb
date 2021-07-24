Rails.application.routes.draw do
  resources :positions
  resources :magazines
  resources :oenologists
  devise_for :users, controllers: {
        sessions: 'users/sessions'
 }

    
  devise_for :installs
  resources :strains
  resources :wines

  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
