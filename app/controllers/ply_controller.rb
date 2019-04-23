class PlyController < ApplicationController
  def index
  end

  def new
    @ply = Ply.new(ply_params)
    binding.pry
    render :index
  end

  private

  def ply_params
    params.require(:ply).permit(:size, :species, :thickness)
  end
end
