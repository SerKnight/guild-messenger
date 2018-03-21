FactoryGirl.define do
  factory :membership do
    user factory: :user
    classroom factory: :classroom

    factory :invalid_membership do
      user_id nil
      classroom_id nil
    end
  end
end
