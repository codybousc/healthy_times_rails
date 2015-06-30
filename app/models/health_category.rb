class HealthCategory < ActiveRecord::Base
  validates :category, :presence => true
end
