require 'rails_helper'

RSpec.describe Classroom, type: :model do

  describe "Classroom Validations" do
    let(:user){ FactoryGirl.create(:user) }
    let(:classroom){ FactoryGirl.build(:classroom, user: user) }
    let(:invalid_classroom){ FactoryGirl.build(:invalid_classroom, user: nil) }
    
    it 'a valid Classroom' do
      expect(classroom.save).to be_truthy
    end

    it 'an invalid Classroom' do
      expect(invalid_classroom.save).to be_falsey
    end
  end
end
