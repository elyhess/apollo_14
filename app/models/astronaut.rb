class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job
end
