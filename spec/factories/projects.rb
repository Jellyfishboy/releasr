FactoryGirl.define do
    factory :project do
        name { Faker::Name.name }
        github { Faker::Internet.url }
        website { Faker::Internet.url }  
        description { Faker::Lorem.characters(144) } 
    end
end