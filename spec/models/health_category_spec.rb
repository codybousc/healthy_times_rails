require 'rails_helper'

describe HealthCategory do
  it { should validate_presence_of :category }
end
