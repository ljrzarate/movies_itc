json.actors do
  json.array! movie.actors, partial: "persons/person", as: :person
end
 
json.producers do
  json.array! movie.producers, partial: "persons/person", as: :person   
end

json.directors do
  json.array! movie.directors, partial: "persons/person", as: :person   
end 