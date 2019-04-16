class Scrap < ApplicationRecord
  validates_presence_of :species,
                        :shell_type,
                        :length,
                        :width,
                        :thickness
  belongs_to :user
end
