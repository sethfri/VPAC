json.array!(@acfee_topics) do |acfee_topic|
  json.extract! acfee_topic, :id, :name, :content
  json.url acfee_topic_url(acfee_topic, format: :json)
end
