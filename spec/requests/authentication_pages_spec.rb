require 'rails_helper'

RSpec.describe "AuthenticationPages", type: :request do
  describe "Authentication" do

    subject { page }

    describe "signin page" do
      before { visit signin_path }

      it { should have_content('Sign in') }
      it { should have_title('Sign in')}
    end

    describe "signin" do
      let(:user) { FactoryGirl.create(:user) }
      before { visit signin_path }

      describe "with invalid information" do
        before { click_button "Sign in" }

        it { should have_title('Sign in') }
        it { should have_selector('div.alert.alert-error') }

        describe "after visiting another page" do
          before { click_link "Home" }
          it { should_not have_selector('div.alert.alert-error') }
        end
      end

      describe "with valid information" do

        before do
          fill_in "Email", with: user.email.upcase
          fill_in "Password", with: user.password
          click_button "Sign in"
          click_link "Account"
        end

        it { should have_title(user.name) }


        it { should have_link ('Profile') }
        it { should have_link ('Sign out') }

        describe "followed by signout" do
          before { click_link "Sign out" }
          it { should have_link('Sign in') }
        end

      end

    end

  end
end
