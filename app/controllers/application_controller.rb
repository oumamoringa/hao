class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "HAO_APP" }.to_json
  end
#get all landlords
  get "/landlords" do
    Landlord.all.to_json
  end

  # #get all properties
  # get "/propeties" do
  #   Property.all.to_json
  # end

  #get all tenants
  get "/tenants" do
    Tenant.all.to_json
  end
end
