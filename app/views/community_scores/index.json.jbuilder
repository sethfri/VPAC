json.array!(@community_scores) do |community_score|
  json.extract! community_score, :id, :school_year, :member_group_id, :number_score
  json.url community_score_url(community_score, format: :json)
end
