require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "Should have hola" do
      visit page1_path
      page.should have_selector("", text: "Page 1")
    end
  end
end
