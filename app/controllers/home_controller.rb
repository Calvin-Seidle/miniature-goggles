class HomeController < ApplicationController
# before_action :authenticate_user!
  def index
  	if user_signed_in? 
	  	if current_user.employee_user_level_id == 99
	  		redirect_to "/root"
	  	elsif current_user.employee_user_level_id == 2
	  		redirect_to "/manager"
	  	else 
	  		redirect_to "/profile"		
	  	end	
  	end
  end
end
