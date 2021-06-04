FactoryBot.define do 
  factory :user do
    email { 'foo@bar.com' }
    password { 'redfred' }
    password_confirmation { 'redfred' }
  end
end
