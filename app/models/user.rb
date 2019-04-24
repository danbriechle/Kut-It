class User < ApplicationRecord

  validates_presence_of :name,
                        :workspace
  has_many :cuts
  has_many :scraps
  
end
