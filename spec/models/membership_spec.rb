require 'rails_helper'

RSpec.describe Membership, type: :model do

  describe "Membership Validations" do
    let(:membership){ FactoryGirl.build(:membership) }
    let(:invalid_membership){ FactoryGirl.build(:invalid_membership) }
    
    it 'a valid Membership' do
      expect(membership.save).to be_truthy
    end

    it 'an invalid Membership' do
      expect(invalid_membership.save).to be_falsey
    end
  end
end
