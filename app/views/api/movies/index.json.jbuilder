json.array! @movies, partial: "api/movies/movie", as: :movie, include_casting: true
