require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.create!(email: "email@email.com", password: "password")}

  describe "attributes" do
    it "should have name and email attributes" do
      expect(user).to have_attributes(email: "email@email.com", password: "password")
    end  
  end


end
