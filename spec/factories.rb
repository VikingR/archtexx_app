FactoryGirl.define do
  factory :user do
    name     "Jonas Zimmermann"
    email    "joe@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end