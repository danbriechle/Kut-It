class Scrap < ApplicationRecord
  validates_presence_of :species,
                        :type,
                        :length,
                        :width,
                        :thickness
  belongs_to :user
end
