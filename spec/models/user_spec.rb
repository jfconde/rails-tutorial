require 'spec_helper'

describe User do
  before do
    @user = User.new(name: "usuario de prueba", email: "prueba@prueba.com")
  end

  describe "When email address is already taken" do

    @user_with_same_email = User.new(name: "usuario de prueba", email: "prueba@prueba.com")

    @user_with_same_email.should be_valid
  end
end
