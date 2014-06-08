require 'rails_helper'

describe Donation do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
end
