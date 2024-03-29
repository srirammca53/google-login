class SessionsController < ApplicationController

 def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    render :show
    #raise session[:user_id].name.inspect
   # redirect_to users_path, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    
   redirect_to tasks_path, :notice => "Signed out!"
  end
end
