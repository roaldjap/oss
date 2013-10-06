json.array!(@timeslots) do |timeslot|
  json.extract! timeslot, :name, :start, :end
  json.url timeslot_url(timeslot, format: :json)
end
