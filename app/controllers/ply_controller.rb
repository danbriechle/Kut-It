class PlyController < ApplicationController
  def new
  end

  def create
    @ply = Ply.new(ply_params)
    render ply_new_path
  end

  private

  def ply_params
    params.require(:ply).permit(:diameter, :depth, :species, :thickness)
  end
end
