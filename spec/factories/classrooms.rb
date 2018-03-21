FactoryGirl.define do
  factory :classroom do
    name 'ClassroomlName'
    description 'classroomdoeswat'
    user factory: :user

    factory :invalid_classroom do
      name ''
      description ''
      user_id nil
    end
  end
end
