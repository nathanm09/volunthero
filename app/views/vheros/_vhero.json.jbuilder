json.extract! vhero, :id, :firstname, :lastname, :email, :password, :shortdescr, :jobtitle, :organization, :lastschool, :city, :province, :country, :handles, :interests, :created_at, :updated_at
json.url vhero_url(vhero, format: :json)
