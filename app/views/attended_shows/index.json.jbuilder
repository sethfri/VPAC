json.array!(@attended_shows) do |attended_show|
  json.extract! attended_show, :id, :title, :school_year, :host_org
  json.url attended_show_url(attended_show, format: :json)
end
