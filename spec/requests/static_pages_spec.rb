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

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title('Vanderbilt Performing Arts Council | Contact') }
  end

  describe "Spotlight page" do
    before { visit spotlight_path }

    it { should have_content('Spotlight') }
    it { should have_title('Vanderbilt Performing Arts Council | Spotlight') }
  end

  describe "Encore page" do
    before { visit encore_path }

    it { should have_content('Encore') }
    it { should have_title('Vanderbilt Performing Arts Council | Encore') }
  end
end
