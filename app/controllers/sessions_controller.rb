class SessionsController < ApplicationController
  
  def guest
    user = User.first
    session[:user_id] = user.id
    redirect_to woodshop_path
  end

end
