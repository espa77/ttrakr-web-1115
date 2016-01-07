class Pairing < ActiveRecord::Base
  belongs_to :shirt
  belongs_to :lesson
end
