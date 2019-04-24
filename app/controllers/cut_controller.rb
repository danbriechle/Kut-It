class CutController < ApplicationController

  def create
    @current_user = current_user
    cut = current_user.cuts.create(cut_params)
    if cut.save
      redirect_to woodshop_path
    else
      flash[:error] = "We're sorry this could not be added to your cut list"
      redirect_to woodshop_path
    end
  end

  def delete
    @current_user = current_user
    cut = current_user.cuts.find(params[:id]).destroy
    flash[:success]= "#{cut.drumsize} #{cut.species} complete!"
    redirect_to woodshop_path
  end

  private

  def cut_params
    params.permit(:shell_type, :length, :height, :drumsize, :thickness, :scarf_angle, :species)
  end

end
