json.array!(@professors) do |professor|
  json.extract! professor, :lname, :fname, :mi, :status, :load, :subjsect_id
  json.url professor_url(professor, format: :json)
end
