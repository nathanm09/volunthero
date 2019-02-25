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
  resources :vorganizations
    
  get 'home/index'
  root 'home#index'    
    
	# -----New Vhero/Vorganization Functionality-----
	
    # We can use users#new for now, or replace this with the controller and action you want to be the site root:
	root to: 'vheros#new'
    root to: 'vorganizations#new'
	# sign up page with form:
	#get 'vheros/new' => 'vheros#new', :as => :new_vhero
    #get 'vorganizations/new' => 'vorganizations#new', :as => :new_vorganization
    # create (post) action for when sign up form is submitted:
	post 'vheros' => 'vheros#create'
    post 'vorganizations' => 'vorganizations#create'
  	# ----- End Vhero/Vorganization Functionality-----
    
    # ---- Login/Logout Routes ----
    get '/vherologin'     => 'sessions#vheronew'
    get '/vorglogin'     => 'sessions#vorgnew'
    # create (post) action for when log in form is submitted:
    post '/vherologin'    => 'sessions#vherocreate'
    post '/vorglogin'    => 'sessions#vorgcreate'
    # delete action to log out:
    delete '/vherologout' => 'sessions#vherodestroy'  
    delete '/vorglogout' => 'sessions#vorgdestroy'
end
