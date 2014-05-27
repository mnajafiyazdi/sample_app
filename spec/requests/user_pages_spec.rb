require 'spec_helper'

describe "UserPages" do

  # Subject is a page
  subject{ page }

  describe "Signup page" do
	before { visit signup_path }
	it { should have_content('Sign Up') }
	it { should have_title(full_title('Sign Up')) }
  end

 # Test the sign up pavge
 describe "when creating a user" do
 	before { visit signup_path }
	let(:submit) { "Create my account" }

	describe "with invalid information" do
		it "should not create a user" do
			expect { click_button submit }.not_to change(User, :count) 
		end
	end

	describe "with valid information" do
		before do
		  visit signup_path
		  fill_in "Name",			with: "Example User"
		  fill_in "Email",			with: "user@example.com"
		  fill_in "Password",		with: "foobar"
		  fill_in "Confirmation",	with: "foobar"
		  click_button "Create my account"
		end
		it "should create a user" do
			expect {click_button submit}.to change(User, :count).by(1)
		end
	end
 end


  # Test the user show page
  describe "profile page" do
	let(:user) { FactoryGirl.create(:user) }
	before { visit user_path(user) }
	it { should have_content(user.name) }
	it { should have_title(user.name) }
  end

end
