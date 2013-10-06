json.array!(@chairpeople) do |chairperson|
  json.extract! chairperson, :lname, :fname, :mi, :department_id
  json.url chairperson_url(chairperson, format: :json)
end
