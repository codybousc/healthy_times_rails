class HealthCategory < ActiveRecord::Base
  has_many :individual_sections
  validates :category, :presence => true
end
