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
    
	# -----New Vhero Functionality-----
	
    # We can use users#new for now, or replace this with the controller and action you want to be the site root:
	root to: 'vheros#new'
	# sign up page with form:
	#get 'vheros/new' => 'vheros#new', :as => :new_vhero   
    # create (post) action for when sign up form is submitted:
	post 'vheros' => 'vheros#create'
  	# ----- End Vhero Functionality-----
    
      # ---- Login/Logout Routes ----
      get '/login'     => 'sessions#new'
      # create (post) action for when log in form is submitted:
      post '/login'    => 'sessions#create'
      # delete action to log out:
      delete '/logout' => 'sessions#destroy'  

end
