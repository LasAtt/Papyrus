require 'spec_helper'
require 'rails_helper'

RSpec.describe Tag, type: :model do
    it "when named can be created" do
      tag = Tag.new name:"test", description: "test"
      expect(tag).to be_valid
    end

    it "when not named can't be created" do
      tag = Tag.new description:"test"
      expect(tag).to_not be_valid
    end
end