# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :icd9dx do
    code "MyString"
    description_short "MyString"
    description_long "MyText"
  end
end
