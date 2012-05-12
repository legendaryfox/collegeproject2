class PagesController < ApplicationController
  def home
    # Find the city they are in
    request_location = request.location.city + ', ' + request.location.state + ', ' + request.location.country
    @user_location = request_location ? 'Boston, MA, USA' : request_location # set a default safe location
    
    # Geocode their location
    user_coordinates = Geocoder.coordinates(@user_location)
    
    # Nearby Communities - 30 mile radius
    @nearby_communities = Community.near(user_coordinates, 30)
    
    # Nearby CBOs - 30 mile radius
    @nearby_cbos = Cbo.near(user_coordinates, 30)
    
    # Nearby Students - 30 mile radius
    @nearby_students = Student.near(user_coordinates, 30)
    
  end



end
