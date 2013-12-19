require 'spec_helper'

describe "AnchorLinkTopics" do
  describe "Anchor Link Help page" do
    before { visit anchor_link_help_path }

    it { should have_content('Anchor Link Help') }
    it { should have_title('Vanderbilt Performing Arts Council | Anchor Link Help') }
  end
end
