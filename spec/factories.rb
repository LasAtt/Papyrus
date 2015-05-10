FactoryGirl.define do
  factory :user do
    username "matti"
    password "Sal1s"
    password_confirmation "Sal1s"
  end

  factory :image do 
    picture File.new(Rails.root + 'spec/fixtures/files/test.jpg')
  end

  factory :tag do
    name "test"
    description "description"
  end
end