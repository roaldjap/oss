json.array!(@schedules) do |schedule|
  json.extract! schedule, :day_id, :timeslot_id, :subjsect_id
  json.url schedule_url(schedule, format: :json)
end
