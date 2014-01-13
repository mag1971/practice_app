require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the h1 content 'Practice App'" do
      visit 'static_pages/home'
      page.should have_selector('h1', :text => 'Practice App')      
    end

    it "should have the title 'Home'" do
      visit 'static_pages/home'
      page.should have_selector('title', 
        :text => 'Practice App by Michael Griffiths | Home', :visible => false)
    end
  end


  describe "Help page" do
    it "should have the h1 content 'Help'" do
	    visit 'static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

     it "should have the title 'Help'" do
      visit 'static_pages/help'
      page.should have_selector('title', 
        :text => "Practice App by Michael Griffiths | Help", :visible => false)
    end

  end

  describe "About page" do
    it "should have the h1 content 'About Us'" do
      visit 'static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

     it "should have the title 'About Us'" do
      visit 'static_pages/about'
      page.should have_selector('title', 
        :text => "Practice App by Michael Griffiths | About Us", :visible => false)
    end

  end
end
