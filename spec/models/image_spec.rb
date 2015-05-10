require 'spec_helper'
require 'rails_helper'

RSpec.describe Image, type: :model do
  it "is saved when image file given" do
    image = Image.new :picture => File.new(Rails.root + 'spec/fixtures/files/test.jpg')
    expect(image).to be_valid
  end

  it "is not saved when non image file given" do
     file = Image.new :picture => File.new(Rails.root + 'spec/models/image_spec.rb')
     expect(file).to_not be_valid
  end
end
