# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "MyString"
    uid "MyString"
    name "MyString"
    email "user@test.com"
    oauth_token "MyString"
    oauth_expires_at "2014-06-09 18:44:56"
  end
end
