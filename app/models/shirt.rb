class Shirt < ActiveRecord::Base
  has_many :pairings
  has_many :lessons, through: :pairings
end
