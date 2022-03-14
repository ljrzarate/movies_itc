json.actors do
  json.array! movie.actors, partial: "api/persons/person", as: :person
end
 
json.producers do
  json.array! movie.producers, partial: "api/persons/person", as: :person   
end

json.directors do
  json.array! movie.directors, partial: "api/persons/person", as: :person   
end 