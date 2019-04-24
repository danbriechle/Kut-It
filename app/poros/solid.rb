class Solid

  attr_reader :species, :thickness, :size, :diameter, :depth, :length, :width, :scarf_length, :slop
  
  def initialize(solid_params)
    @species = solid_params[:species]
    @thickness = solid_params[:thickness]
    @size = "#{solid_params[:diameter]}X#{solid_params[:depth]}"
    @length = solid_length(solid_params[:diameter], solid_params[:scarf_length], solid_params[:slop])
    @width = solid_width(solid_params[:depth])
    @diameter = solid_params[:diameter]
    @depth = solid_params[:depth]
    @scarf_length = solid_params[:scarf_length]
    @slop = solid_params[:slop]
  end

  def solid_length(diameter, scarf_length, slop)
    (((diameter.to_f * 3.15 + scarf_length.to_i + 2).to_i) * (slop.to_i/100.00 + 1)).round.to_i
  end

  def solid_width(depth)
    (depth.to_f + 2).to_i
  end

end
