require 'rails_helper'

RSpec.describe Rating, type: :model do

  describe "associations" do
    it { should belong_to(:user)}
    it { should belong_to(:book) }
  end

  describe "validations" do
    it { should validate_presence_of(:review) }
    it { should validate_presence_of(:number) }
    it { should validate_numericality_of(:number).only_integer}
    it { should validate_numericality_of(:number).is_greater_than_or_equal_to(1)}
    it { should validate_numericality_of(:number).is_less_than_or_equal_to(5)}
    it { should validate_length_of(:review).is_at_most(500)}
  end
end
