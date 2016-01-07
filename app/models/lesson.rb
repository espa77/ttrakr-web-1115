class Lesson < ActiveRecord::Base
  belongs_to :user
  has_many :pairings
  has_many :shirts, through: :pairings
end
