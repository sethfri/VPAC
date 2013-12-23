json.array!(@member_groups) do |member_group|
  json.extract! member_group, :id, :name, :photo_url, :bio
  json.url member_group_url(member_group, format: :json)
end
