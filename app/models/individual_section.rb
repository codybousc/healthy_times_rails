class IndividualSection < ActiveRecord::Base
  belongs_to :health_category
  validates :title, :presence => true
  validates :content, :presence => true
end
