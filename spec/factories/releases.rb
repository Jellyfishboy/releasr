FactoryGirl.define do
    factory :release do
        name { Faker::Name.name}
        notes { Faker::Lorem.characters(20) }
        state { 'draft' }
        date { Date.today }

        association :project
    end
end
