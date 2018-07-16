Rails.application.routes.draw do
  resources :vopportunity_enrolments
  resources :vheros
  resources :vorganizations do
    resources :vopportunities
  end
  get 'home/index'
  root 'home#index'    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
