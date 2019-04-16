class Cut < ApplicationRecord
  validates_presence_of :species,
                        :type,
                        :length,
                        :height,
                        :thickness,
                        :scarf_angle,
                        :drumsize
  belongs_to :user
end
