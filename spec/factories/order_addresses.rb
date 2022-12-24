FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    prefecture_id { 2 }
    city { '船橋市緑区' }
    street_number { '1-1' }
    building { '東京ハイツ' }
    phone_number { 1234567890 }
    token {"tok_abcdefghijk00000000000000000"}
  end
end
