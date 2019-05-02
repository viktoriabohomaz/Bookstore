require 'rails_helper'

RSpec.describe Author, type: :model do

  describe "validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end

  describe "associations" do
    it { should have_many(:books) }
  end
end
