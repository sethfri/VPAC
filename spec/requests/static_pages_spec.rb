require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_title('Vanderbilt Performing Arts Council') }
    it { should_not have_title('| Home') }
  end

  describe "Mission page" do
    before { visit mission_path }

    it { should have_content('Mission') }
    it { should have_title('Vanderbilt Performing Arts Council | Mission') }
  end

  describe "Anchor Link Help page" do
    before { visit anchor_link_help_path }

    it { should have_content('Anchor Link Help') }
    it { should have_title('Vanderbilt Performing Arts Council | Anchor Link Help') }
  end

  describe "Calendar page" do
    before { visit calendar_path }

    it { should have_content('Calendar') }
    it { should have_title('Vanderbilt Performing Arts Council | Calendar') }
  end

  describe "Spotlight page" do
    before { visit spotlight_path }

    it { should have_content('Spotlight') }
    it { should have_title('Vanderbilt Performing Arts Council | Spotlight') }
  end

  describe "Main Attraction page" do
    before { visit main_attraction_path }

    it { should have_content('Main Attraction') }
    it { should have_title('Vanderbilt Performing Arts Council | Main Attraction') }
  end

  describe "Encore page" do
    before { visit encore_path }

    it { should have_content('Encore') }
    it { should have_title('Vanderbilt Performing Arts Council | Encore') }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title('Vanderbilt Performing Arts Council | Contact') }
  end
end
