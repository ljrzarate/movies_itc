json.extract! person, :id, :first_name, :last_name, :created_at, :updated_at, :aliases
json.url person_url(person, format: :json)

json.actor_in do 
  json.array! person.movies_as_actor, partial: "movies/movie", as: :movie
end

json.produced_in do 
  json.array! person.movies_as_producer, partial: "movies/movie", as: :movie
end

json.directed_in do 
  json.array! person.movies_as_director, partial: "movies/movie", as: :movie
end
