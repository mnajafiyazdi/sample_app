require 'spec_helper'

describe "StaticPages" do

  # Subject of test is page
  subject{ page }

  # Shared tests for all pages
  shared_examples_for "all static pages" do
  	it { should have_selector('h1', text: heading) }
  	it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
  	# First visit the root_path before each test
  	before{ visit root_path}
	let(:heading) { 'Sample App' }
	let(:page_title) { '' }

    # Run the shared examples
	it_should_behave_like "all static pages"

	# Check that the title has not 'Home' in it
	it { should_not have_title('| Home') }
  end


  describe "Help page" do
  	before { visit help_path }
    let(:heading) { 'Help' }
	let(:page_title) { 'Help' }
    # Run the shared examples
	it_should_behave_like "all static pages"
  end

  describe "About page" do
  	before { visit about_path }
	let(:heading) { 'About' }
	let(:page_title) { 'About' }
    # Run the shared examples
	it_should_behave_like "all static pages"
  end

  describe "Contact page" do
  	before { visit contact_path }
 	let(:heading) { 'Contact' }
	let(:page_title) { 'Contact' }
    # Run the shared examples
	it_should_behave_like "all static pages"
  end

  ## Test for the links on the layouts
  it "should have the right links on the layout" do
  	visit root_path
	click_link "About"
	expect(page).to have_title(full_title('About Us'))
	click_link "Help"
	expect(page).to have_title(full_title('Help'))
	click_link "Contact"
	expect(page).to have_title(full_title('Contact Us'))
	click_link "Home"
	expect(page).to have_title(full_title(''))
	click_link "Sign up now!"
	expect(page).to have_title(full_title('Sign Up'))
	click_link "sample app"
	expect(page).to have_title(full_title(''))
  end

end
