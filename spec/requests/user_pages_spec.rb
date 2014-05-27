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
		end

		it "should create a user" do
			expect {click_button submit}.to change(User, :count).by(1)
		end

		# Test after saving the user (giving flash success message)
		describe "after saving the user" do
			before { click_button submit }
			let(:user) { User.find_by(email: 'user@example.com') }
			it { should have_title(user.name) }
			it { should have_selector('div.alert.alert-success', text: 'Welcome') }
		end

	end

	# Test error messages
	describe "after submission" do
		before { click_button submit }
		# should remain in the same page
		it { should have_title('Sign Up') }
		# should have shown some error message
		it { should have_content('error') }
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
