class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :age, :description, :url
end
