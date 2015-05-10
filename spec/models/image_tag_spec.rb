require 'spec_helper'
require 'rails_helper'

RSpec.describe ImageTag, type: :model do
  let!(:image) {FactoryGirl.create :image}
  let!(:tag) {FactoryGirl.create :tag}


  it "is saved when image and tag given" do
    image_tag = ImageTag.new :image => image, :tag => tag
    expect(image_tag).to be_valid
  end

  it "is not saved when image not given" do
    image_tag = ImageTag.new :tag => tag
    expect(image_tag).to_not be_valid
  end

  it "is not saved when tag not given" do
    image_tag = ImageTag.new :image => image
    expect(image_tag).to_not be_valid
  end

end