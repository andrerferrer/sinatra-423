require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# the slash restaurants route
# means the INDEX of RESTAURANTS
get "/restaurants" do
  # what we write here is the controller
  # retrieve all the restaurants and give it to the view
  @restaurants = Restaurant.all

  # render the view
  erb :index
end

# As a user I can add a restaurant
post "/restaurants" do
  # retrieve the inputted data
  name = params["restaurant_name"]
  address = params["restaurant_address"]

  # create a new restaurant with the inputted data
  Restaurant.create(name: name, address: address)

  redirect "/restaurants"
end

# As a user I can see one restaurant's details
# /restaurants/:id
# means the SHOW of RESTAURANTS
get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  # render the view
  erb :show
end
