Rails.application.routes.draw do
  resources :vopportunity_enrolments
  resources :vheros
  resources :vorganizations do
    resources :vopportunities
  end
  resources :vopportunities, only: :show do
    resources :vopportunity_enrolments, only: :create
  end
  resources :vopportunities

    
  get 'home/index'
  root 'home#index'    
    
	# ----- Start login/logout functionality-----
	
	# log in page with form:
	get '/login'     => 'sessions#new'
	
	# create (post) action for when log in form is submitted:
	post '/login'    => 'sessions#create'
	
	# delete action to log out:
	delete '/logout' => 'sessions#destroy'  
  	
  	# ----- end login/logout functionality -----
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
