json.array!(@sections) do |section|
  json.extract! section, :name, :year
  json.url section_url(section, format: :json)
end
