require 'spec_helper'

describe User do

  it "requires an email" do
    user = Fabricate.build(:user)
    user.email = nil
    user.should_not be_valid
  end

  context "passwords" do
    it "requires password and password_confirmation to be the same" do
      user = Fabricate.build(:user)
      user.password_confirmation = "password2"
      user.should_not be_valid
    end
  end

end
