class Ply
  attr_reader :species, :thickness, :size, :dimensions
  def initialize(ply_params)
    @species = ply_params[:species]
    @thickness = ply_params[:thickness]
    @size = ply_params[:size]
    @dimensions = ply_dimensions(ply_params[:size])
  end

  def ply_dimensions(size)
    x = size.scan(/(\d*)([X])(\d*)/)
    binding.pry
  end
end
