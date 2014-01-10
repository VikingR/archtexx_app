require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Archtexx" }

  describe "Home page" do

    it "should have the content 'Archtexx'" do
      visit '/static_pages/home'
      expect(page).to have_content('Archtexx')
    end

    it "should have the title 'Archtexx'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title}")
    end
  end

  describe "Contact Page" do
    
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end

    it "should have the title 'Archtexx | Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
	end 

  end

end