
require 'rails_helper'

describe IndividualSection do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
end
