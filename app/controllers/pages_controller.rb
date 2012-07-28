class PagesController < ApplicationController
  def home
    
    # Find the city they are in
    if (!request.location.city.empty? && !request.location.state.empty? && !request.location.country.empty?)
      puts "Case 1"
      @user_location = request.location.city + ', ' + request.location.state + ', ' + request.location.country
    else
      puts "Case 2"
      @user_location = 'Boston, MA, USA'
    end
    
    @user_location = "Boston, MA, USA"

    # Geocode their location
    user_coordinates = Geocoder.coordinates(@user_location) || [42.3584308, -71.0597732] 
    
    
    
    # fategory filter
    @categories = Cbo.category_counts

    if (!params[:category] || params[:category] == '')
      @cbos = Cbo.all
      
      # Nearby CBOs - 30 mile radius
      @nearby_cbos = Cbo.near(user_coordinates, 30)
    else
      category_string = params[:category]
      @cbos = Cbo.tagged_with(category_string)     
      
      # Nearby CBOs - 30 mile radius
      @nearby_cbos = @cbos.near(user_coordinates, 30) #Cbo.near(user_coordinates, 30) 
    end
    
    
    
    
    # Nearby Communities - 30 mile radius
    #puts "user coordinates is #{user_coordinates} for #{@user_location}"
    @nearby_communities = Community.near(user_coordinates, 30)
    
    
    
    # Nearby Students - 30 mile radius
    @nearby_students = Student.near(user_coordinates, 30)
    
    #@cbos = Cbo.all
    
  end
  
  def mission
  end



end
