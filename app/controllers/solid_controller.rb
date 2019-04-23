class SolidController < ApplicationController
  def new
    @current_user = current_user
  end

  def create
    @current_user = current_user
    @solid = Solid.new(solid_params)
    render solid_new_path
  end

  private

  def solid_params
    params.require(:solid).permit(:diameter, :depth, :species, :thickness, :scarf_length)
  end
end
