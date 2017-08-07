require 'rails_helper'

RSpec.describe "StaticPages", type: :request do



  describe "Home page" do
    it "should have the content 'Home'" do
      visit static_pages_home_path
      expect(page).to have_content('Home')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

   describe "Help page" do
    it "should have the content 'Help'" do
      visit static_pages_help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit static_pages_about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

end
