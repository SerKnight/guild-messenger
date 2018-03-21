FactoryGirl.define do
  factory :message do
    content "DisBDaMessage"
    user factory: :user
    classroom factory: :classroom

    factory :invalid_message do
      content ""
      user nil
      classroom nil
    end
  end
end
