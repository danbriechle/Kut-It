class SessionsController < ApplicationController
  def guest
    user = User.find("1")
    session[:user_id] = user.id
    redirect_to dashboard_path
  end
end
