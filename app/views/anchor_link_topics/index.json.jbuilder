json.array!(@anchor_link_topics) do |anchor_link_topic|
  json.extract! anchor_link_topic, :id, :name, :content
  json.url anchor_link_topic_url(anchor_link_topic, format: :json)
end
