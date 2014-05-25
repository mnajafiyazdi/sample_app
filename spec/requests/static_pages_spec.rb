require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    # Check for the contents
    it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
    end

	# Check for the title
	it "should have the right title" do
		visit '/static_pages/home'
		expect(page).to have_title("#{base_title} | Home")
	end

  end

  describe "Help page" do
    # Check for the contents
    it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
    end

	# Check for the title
	it "should have the right title" do
		visit '/static_pages/help'
		expect(page).to have_title("#{base_title} | Help")
	end

  end

  describe "About page" do
    # Check for the contents
  	it "should have the content 'About Us'" do
		visit "/static_pages/about"
		expect(page).to have_content('About Us')
	end

	# Check for the title
	it "should have the right title" do
		visit '/static_pages/about'
		expect(page).to have_title("#{base_title} | About Us")
	end

  end


  describe "Contact Us" do
  	# Check for contents
	it "should have the concent 'Contact Us'" do 
		visit '/static_pages/contact'
		expect(page).to have_content('Contact Us')
	end

    # Check for title
    it "should have the right title" do
    	visit '/static_pages/contact'
		expect(page).to have_title("#{base_title} | Contact Us")
	end

  end
end
