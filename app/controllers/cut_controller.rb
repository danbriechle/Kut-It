class CutController < ApplicationController

  def create
    cut = current_user.cuts.create!(cut_params)
    if cut.save
      redirect_to woodshop_path
    else
      redirect_to ply_new_path
      @error = "We're sorry this could not be added to your cut list"
    end
  end

  private

  def cut_params
    params.permit(:shell_type, :length, :height, :drumsize, :thickness, :scarf_angle, :species)
  end

end
