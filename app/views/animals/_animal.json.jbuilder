json.extract! animal, :id, :name, :gender, :age, :description, :url, :created_at, :updated_at
json.url animal_url(animal, format: :json)