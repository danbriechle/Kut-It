class Ply
  attr_reader :species, :thickness, :size, :diameter, :depth, :length, :width
  def initialize(ply_params)
    @species = ply_params[:species]
    @thickness = ply_params[:thickness]
    @size = "#{ply_params[:diameter]}X#{ply_params[:depth]}"
    @length = ply_length(ply_params[:diameter])
    @width = ply_width(ply_params[:depth])
    @diameter = ply_params[:diameter]
    @depth = ply_params[:depth]
  end

  def ply_length(diameter)
    (diameter.to_f * 3.15 + 2).to_i
  end

  def ply_width(depth)
    (depth.to_f + 2).to_i
  end

end
