class Player < ActiveRecord::Base
  has_and_belongs_to_many :walls
  validates_presence_of :nom
end
