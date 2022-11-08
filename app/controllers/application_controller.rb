class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

      # allow access-control-allow-origin header on all requests
      before do
        response.headers["Access-Control-Allow-Origin"] = "*"
    end

  # enable CORS preflight requests
    options "*" do
    response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
    end

  # Add your routes here
  #========================
  #get requests
  get "/" do
    { message: "HAO_APP" }.to_json
  end
#get all landlords
  get "/landlords" do
    Landlord.all.to_json
  end

  #get all properties
  get "/properties" do
    Property.all.to_json
  end

  #get all tenants
  get "/tenants" do
    Tenant.all.to_json
  end

  #post requests(create property and tenant)
# Creating property
    post '/property' do
        property = Property.create(
            location: params[:location],
            property_type: params[:property_type],
            property_name: params[:property_name],
            property_size: params[:property_size],
            landlord_id: params[:landlord_id],
        )
        property.to_json
    end

#creating tenant
    post '/tenant' do
     tenant = Property.create(
          name: params[:name],
          email: params[:email],
          phone_number: params[:phone_number],
          property_id: params[:property_id],
      )
      tenant.to_json
  end
end
