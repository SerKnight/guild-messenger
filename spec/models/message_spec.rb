require 'rails_helper'

RSpec.describe Message, type: :model do

  describe "Message Validations" do
    let(:message){ FactoryGirl.build(:message) }
    let(:invalid_message){ FactoryGirl.build(:invalid_message) }
    
    it 'a valid message' do
      expect(message.save).to be_truthy
    end

    it 'an invalid message' do
      expect(invalid_message.save).to be_falsey
    end
  end
end
