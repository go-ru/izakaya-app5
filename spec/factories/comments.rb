FactoryBot.define do
  factory :comment do
    text  {'わかりました'}
    association :user
    association :message
  end
end
