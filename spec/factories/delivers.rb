FactoryBot.define do
  factory :deliver do
    store_name {'魚民'}
    product    {'キャベツ'}
    association :user
    association :message

    after(:build) do |store|
      store.image.attach(io: File.open('public/images/test_image2.png'), filename: 'test_image2.png')
    end
  end
end
