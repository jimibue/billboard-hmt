class Billboard < ApplicationRecord
  has_many :rankings
  has_many :songs, through: :rankings
end
