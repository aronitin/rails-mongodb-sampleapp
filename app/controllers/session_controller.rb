class SessionController < ApplicationController
  def new
  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me])

  	if user
  		# Sorcery method to redirect the user to the private page that user requested before he was redirected to the login page
  		redirect_back_or_to user, :notice => "Logged In!!"
  	else
  		@error_message = "Invalid username or password"
  		render 'new'			
  	end
  end

  def destroy
  	# method provided by sorcery
  	logout
  	
  	redirect_to root_url, :notice => "Logged out!!"
  end
end
