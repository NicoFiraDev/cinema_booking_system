class Movie < ApplicationRecord
  validates_presence_of :name, :description, :url, :presentation_day
end
