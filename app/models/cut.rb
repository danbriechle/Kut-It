class Cut < ApplicationRecord
  
  validates_presence_of :species,
                        :shell_type,
                        :length,
                        :height,
                        :thickness,
                        :scarf_angle,
                        :drumsize
  belongs_to :user

  enum shell_type: [:ply, :steam]

end
