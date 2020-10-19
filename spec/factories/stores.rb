FactoryBot.define do
  factory :store do
    address      {'東京都足立区綾瀬'}
    tel_number   {'080-0987-6543'}
    genre        {'居酒屋'}
    hour         {'17:00~24:00'}
    budget       {'3000円〜'}
    association :user

    after(:build) do |store|
      store.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
