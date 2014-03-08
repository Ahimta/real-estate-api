# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trade do
    sequence(:name) { |n| "name#{n}"}
    sequence(:description) { |n| "description#{n}"}

    factory :valid_trade do
      name 'name'
      description 'description'
    end
    factory :invalid_trade do
      name ''
      description 'description'
    end
  end
end
