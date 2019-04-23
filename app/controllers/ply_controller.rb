class PlyController < ApplicationController
  def new
  end

  def create
    @ply = Ply.new(ply_params)
    render :new
  end

  private

  def ply_params
    params.require(:ply).permit(:size, :species, :thickness)
  end
end
