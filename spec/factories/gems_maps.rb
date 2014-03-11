# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gems_map do
    icd10dx_id 1
    icd9dx_id 1
    mapDir 1
    is_approx false
    is_no_map false
    is_combo false
    scenario 1
    choice_list 1
  end
end
