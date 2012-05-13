module ApplicationHelper

	#Function to load the main application logo
	def logo
		image_tag("header_logo.png", :alt =>"The College Project", :class=>"header-logo")
	end

end
