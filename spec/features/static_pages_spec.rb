require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "Should have hola" do
      visit static_pages_page_1_path
      page.should have_selector("h1", text: "Page 1")
    end
  end
end
