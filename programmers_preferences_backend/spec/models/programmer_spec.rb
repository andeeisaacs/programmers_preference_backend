require 'rails_helper'

RSpec.describe Programmer, type: :model do
  it "should validate name" do
    programmer = Programmer.create
    expect(programmer.errors[:name]).to_not be_empty
  end
end
