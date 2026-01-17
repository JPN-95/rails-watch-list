require "open-uri"
require "json"

api_endpoint = "https://tmdb.lewagon.com/movie/top_rated"
movies = JSON.parse(URI.parse(api_endpoint).read)
Movie.destroy_all
puts "creating db"
movies["results"].each do |movie|
  Movie.create(
    title:movie["title"],
    overview: movie["overview"],
    poster_url: movie["poster_path"],
    rating:movie["vote_average"])
end
puts "Finished! Created #{Movie.count} movies"
