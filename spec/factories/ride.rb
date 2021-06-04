FactoryBot.define do
  factory :ride do
    user_id factory: :user #association :user
    title { 'Park Laps' }
    date { '2021-12-10' }
  end
end
