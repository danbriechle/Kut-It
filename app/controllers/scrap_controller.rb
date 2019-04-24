class ScrapController < ApplicationController
  def new
    @current_user = current_user
  end

  def create
    scrap = current_user.scraps.create!(scrap_params)
    if scrap.save
      flash[:notice] = "#{scrap.species} has been added to the scrap bin"
      redirect_to '/woodshop'
    else
      render '/new/scrap'
      flash[:error] = "We're sorry this scrap could not be added to the scrap bin"
    end
  end

  private

  def scrap_params
    params.require(:scrap).permit(:length, :width, :thickness, :species, :shell_type)
  end
end
