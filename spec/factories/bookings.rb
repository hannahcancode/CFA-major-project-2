FactoryGirl.define do
  factory :booking do
    start_date "2017-04-20"
    end_date "2017-04-20"
    approved false
    user nil
    space nil
  end
end
