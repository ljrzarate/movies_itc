json.extract! movie, :id, :title, :release_year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
json.release_year_roman movie.release_year_roman

if local_assigns[:include_casting]
  json.partial! "api/movies/castings", movie: movie
end