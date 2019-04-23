class Ply
  attr_reader :species, :thickness, :size, :dimensions, :diameter, :depth
  def initialize(ply_params)
    @species = ply_params[:species]
    @thickness = ply_params[:thickness]
    @size = "#{ply_params[:diameter]}X#{ply_params[:depth]}"
    @dimensions = ply_dimensions(ply_params[:diameter], ply_params[:depth])
    @diameter = ply_params[:diameter]
    @depth = ply_params[:depth]
  end

  def ply_dimensions(diameter, depth)
    "#{(diameter.to_f * 3.15 + 2).to_i}X#{(depth.to_f + 2).to_i}"
  end
end
