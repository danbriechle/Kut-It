class ScrapController < ApplicationController

def new
  @current_user = current_user
end

def create
  current_user.scraps.create!(scrap_params)
end

end
