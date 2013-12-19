require 'spec_helper'

describe "AcfeeTopics" do
  describe "AcFee Help page" do
    before { visit acfee_help_path }

    it { should have_content('AcFee Help') }
    it { should have_title('Vanderbilt Performing Arts Council | AcFee Help') }
  end
end
