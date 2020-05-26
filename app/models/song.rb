class Song < ApplicationRecord
  belongs_to :artist
  has_many :rankings
  has_many :billboards, through: :rankings
end
