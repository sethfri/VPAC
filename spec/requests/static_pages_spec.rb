require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content" do
      visit root_path
    end

    it "should have the title 'Vanderbilt Performing Arts Council'" do
      visit root_path
      expect(page).to have_title('Vanderbilt Performing Arts Council')
    end
  end

  describe "Mission page" do
    it "should have the content 'Mission'" do
      visit mission_path
      expect(page).to have_content('Mission')
    end

    it "should have the title 'Vanderbilt Performing Arts Council | Mission'" do
      visit mission_path
      expect(page).to have_title('Vanderbilt Performing Arts Council | Mission')
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Vanderbilt Performing Arts Council | Contact'" do
      visit contact_path
      expect(page).to have_title('Vanderbilt Performing Arts Council | Contact')
    end
  end
end
