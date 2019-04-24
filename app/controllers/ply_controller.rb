class PlyController < ApplicationController
  
  def new
    @current_user = current_user
  end

  def create
    @current_user = current_user
    @ply = Ply.new(ply_params)
    render ply_new_path
  end

  private

  def ply_params
    params.require(:ply).permit(:diameter, :depth, :species, :thickness, :slop)
  end

end
