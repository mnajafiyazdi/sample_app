require 'spec_helper'

describe "UserPages" do

  # Subject is a page
  subject{ page }

  describe "Signup page" do
	before { visit signup_path }
	it { should have_content('Sign Up') }
	it { should have_title(full_title('Sign Up')) }
  end
end
