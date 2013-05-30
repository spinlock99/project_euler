require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "Should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "Should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title('Home')
    end
  end
  describe "Help Page" do
    it "Should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "Should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title('Help')
    end
  end
  describe "About Page" do
    it "Should have content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title('About')
    end
  end
  describe "Contact Page" do
    it "Should have content 'Contact Page'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "Should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title('Contact')
    end
  end
end
