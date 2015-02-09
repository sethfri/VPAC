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
    @client.entries(content_type: '5AYS9ZskFiUiYCc8owESc', order: 'fields.order')
  end

  def member_groups
    @client.entries(content_type: '39eXosCElOOu4e8MKOy6IO')
  end

  def board_members
    @client.entries(content_type: '1q34zvtXzCGo8ck6qYg8qa', order: 'fields.order')
  end

  def spotlight
    @client.entry('2FvarL4hpY4GI00Ic0Koeu')
  end

  def main_attraction
    @client.entry('37AS9XjjF6GW2KwOeeYkEC')
  end

  def encore
    @client.entry('3VCNZSEY36C62qMamowmuq')
  end

  def nomination_email
    @client.entry('4gwOy64mQ0CiYMEUgiG8Ge')
  end
end