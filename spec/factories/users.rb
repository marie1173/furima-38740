FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              { 'abcd1234' }
    password_confirmation {password }
    family_name           {'田中' }
    first_name            {'花子' }
    family_name_kana      {'タナカ' }
    first_name_kana       {'ハナコ' }
    date_of_birth          {'1999-12-28'}
  end
end 