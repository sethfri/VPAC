json.array!(@publicity_topics) do |publicity_topic|
  json.extract! publicity_topic, :id, :name, :content
  json.url publicity_topic_url(publicity_topic, format: :json)
end
