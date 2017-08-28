require 'rails_helper'

RSpec.describe "UserPages", type: :request do
  describe "GET /user_pages" do
    subject { page }

    describe "profile page" do
        let(:user) { FactoryGirl.create(:user) }
        #Replace with code to make a user variable
        before { visit user_path(user) }

        it { should have_content(user.name) }
        it { should have_title(user.name) }
      end

      describe "signup page" do
        before { visit signup_path }

        it { should have_content('Sign up') }
        it { should have_title(full_title('Sign up')) }
      end
  end
end
