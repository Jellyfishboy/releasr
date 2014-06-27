FactoryGirl.define do
    factory :release do
        name { Faker::Name.name}
        notes { Faker::Lorem.characters(20) }
        draft { false }
        date { Date.today }

        association :project
    end
end
