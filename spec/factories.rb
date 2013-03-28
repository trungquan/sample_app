FactoryGirl.define do
factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "Person_#{n}@gmail.com" }
    password "1234567"
    password_confirmation "1234567"

    factory :admin do
    	admin true
    end
  end
end
