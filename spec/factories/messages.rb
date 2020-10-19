FactoryBot.define do
  factory :message do
    request  {'こんにちは'}
    association :user
  end
end
