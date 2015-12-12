json.array!(@index_people) do |index_person|
  json.extract! index_person, :id, :name, :age
  json.url index_person_url(index_person, format: :json)
end
