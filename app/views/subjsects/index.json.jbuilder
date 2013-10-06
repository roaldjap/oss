json.array!(@subjsects) do |subjsect|
  json.extract! subjsect, :section_id, :subject_id, :room_id, :schedule_id
  json.url subjsect_url(subjsect, format: :json)
end
