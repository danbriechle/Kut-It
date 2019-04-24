class ScrapController < ApplicationController
  def new
    @current_user = current_user
  end

  def create
    @current_user = current_user
    scrap = current_user.scraps.create(scrap_params)
    if scrap.save
      flash[:notice] = "#{scrap.species} has been added to the scrap bin"
      redirect_to '/woodshop'
    else
      flash[:error] = "We're sorry this scrap could not be added to the scrap bin"
      render '/scrap/new'
    end
  end

  def delete
    @current_user = current_user
    scrap = current_user.scraps.find(params[:id]).destroy
    flash[:success]= "#{scrap.species} Tossed!"
    redirect_to woodshop_path
  end

  private

  def scrap_params
    params.require(:scrap).permit(:length, :width, :thickness, :species, :shell_type)
  end
end
