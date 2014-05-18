require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    # Check for the contents
    it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
    end

	# Check for the title
	it "should have the right title" do
		visit '/static_pages/home'
		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
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
		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
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
		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
	end

  end


end
