class SessionsController < ApplicationController
 def new
    redirect_to deneme_index_path if session[:user_id]
 end

 def create
    user = User.find_by_username(params[:username])
	
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
<<<<<<< HEAD
        @password_id = Password.find_by_userid(session[:user_id])
        user.update_attribute(:userlogin, Time.now)
              if user.role == "student" && @password_id == nil
				redirect_to ("/password")
			  end
			  if user.role == "student" && @password_id != nil
				redirect_to ("/anket")
			  end
              if user.role == "admin"
                redirect_to ("/admin")
=======
              case user.role
              when "student"
<<<<<<< HEAD
                redirect_to ("/deneme")
=======
		redirect_to ("/password")
>>>>>>> fe6b3a778f75447454c3183d3318c9c7dfadec8a
              when "admin"
                redirect_to ("/deneme")
>>>>>>> 7293cae1cc59a3db67649870be746640422320ce
              end
         
    else
        flash[:error] = "Kullanici adin ve/veya parolan hatali"
        redirect_to root_url
	end
 end
 
 
 
 

 def destroy
 
    session[:user_id] = nil
    redirect_to root_url
 
 end
 
end
