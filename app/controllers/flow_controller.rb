class FlowController < ApplicationController
   
   


  def login_page 	
  end

  def login_check
  
  $username = params["login-username"]
  @password = params["login-password"]
  #@db_value= Database.new
  @db_value = Database.where(users: $username)
  
  $auth = "not authorized"
  flash[:sign_in_error]="Invalid Credentials. Verify your password or portal access with administrator."
# render :js => "alert('hi da')"
  

  unless @db_value.blank?
  	@db_value.each do |vetti|
  		if (vetti.pass == @password)
  			$auth = "user authorized"
  			break
  		end
  	end
  end
 
 if $auth=="user authorized"
  	redirect_to flow_questions_path
 else
  redirect_to flow_login_page_path #controller-name_method/view_name	
 # render :js => "errorbox_visibility();"
 end
# @vetti = "nando"
#   puts "dwarak"

end

  def questions

    

    @challenge=TakeQuiz.all;

  end


end
