class SolidController < ApplicationController
  def new
    @current_user = current_user
  end
end
