require 'rails_helper'

RSpec.describe Ride do 
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:user_id) }
  end

  context 'associations' do
    it { should belong_to :owner }
    it { should have_many :riders }
  end
end
