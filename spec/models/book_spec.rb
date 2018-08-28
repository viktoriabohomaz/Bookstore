require 'rails_helper'

RSpec.describe Book, type: :model do

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:count_in_stock) }
    it { should validate_numericality_of(:count_in_stock).only_integer}
    it { should validate_numericality_of(:count_in_stock).is_greater_than_or_equal_to(0)}
    it { should validate_length_of(:title).is_at_least(5)}
    it { should validate_length_of(:title).is_at_most(100)}
    it { should validate_length_of(:description).is_at_least(100)}
    it { should validate_length_of(:description).is_at_most(1000)}
  end

  describe "associations" do
    it { should have_many(:book_categories) }
    it { should have_many(:ratings) }
    it { should have_many(:categories).through(:book_categories)}
    it { should belong_to(:author) }
  end
end
