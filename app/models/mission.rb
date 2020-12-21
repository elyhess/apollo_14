class Mission < ApplicationRecord
  validates_presence_of :title, :time_in_space
end
