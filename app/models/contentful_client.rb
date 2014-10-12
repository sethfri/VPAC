require 'singleton'

class ContentfulClient
  include Singleton

  def initialize
    @client = Contentful::Client.new(
        access_token: 'adb4d1c686cd197d56d0dc7b677a79f0f36ab77b82fbcc16c7fe115bafaa7c4d',
        space: 'surtvltn1tm7',
        dynamic_entries: :auto
    )
  end

  def carousel_items
    @client.entries(content_type: '5AYS9ZskFiUiYCc8owESc', order: 'sys.createdAt')
  end
end