FactoryBot.define do
  factory :item do
    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    item_name              {'item_name'}
    item_text              {'item_text'}
    category_id            { 2 }
    condition_id           { 2 }
    fee_id                 { 2 }
    prefecture_id          { 2 }
    day_id                 { 2 }
    price                  {100000}
    association :user
    
  end
end
