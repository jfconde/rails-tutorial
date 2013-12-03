require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "Should have hola" do
      visit '/static_pages/home'
      page.should have_content("hola");
      #response.status.should be(200)
    end
  end
end
