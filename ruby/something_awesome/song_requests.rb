#Song Request Log

#require gems
require 'sqlite3'

# create SQLite3 database
$db = SQLite3::Database.new("request_log.db")
$db.results_as_hash = true

#create necessary tables (if they haven't been made already)
create_artists_table = <<-SQL
  CREATE TABLE IF NOT EXISTS artists(
    id INTEGER PRIMARY KEY,
    artist_name VARCHAR(255),
    art_request_total INT
  )
SQL

create_genres_table = <<-SQL
  CREATE TABLE IF NOT EXISTS genres(
    id INTEGER PRIMARY KEY,
    genre_name VARCHAR(255),
    gen_request_total INT
  )
SQL

create_requests_table = <<-SQL
  CREATE TABLE IF NOT EXISTS requests(
    id INTEGER PRIMARY KEY,
    artist_id INT,
    song VARCHAR(255),
    genre_id INT,
    request_origin VARCHAR(255),
    in_library INT,
    day DATE,
    FOREIGN KEY (artist_id) REFERENCES artist(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
  )
SQL

$db.execute(create_artists_table)
$db.execute(create_genres_table)
$db.execute(create_requests_table)

#create a method to add a request

def add_request(artist, song, genre, origin, library, date)
artists = $db.execute("SELECT * FROM artists")
genres = $db.execute("SELECT * FROM genres")
  #update artists table
  if artists.any?{ |hash| hash["artist_name"] == artist }
    current_artist = artists.select{ |hash| hash["artist_name"] == artist }
    counter = current_artist[0]["art_request_total"].to_i + 1
    $db.execute("UPDATE artists SET art_request_total = ? WHERE artist_name = ?", [counter, artist])
  else
    $db.execute("INSERT INTO artists (artist_name, art_request_total) VALUES (?, 1)", [artist])
    artists = $db.execute("SELECT * FROM artists")
    current_artist = artists.select{ |hash| hash["artist_name"] == artist }
  end
  #update genres table
  if genres.any?{ |hash| hash["genre_name"] == genre }
    current_genre = genres.select{ |hash| hash["genre_name"] == genre }
    counter = current_genre[0]["gen_request_total"].to_i + 1
    $db.execute("UPDATE genres SET gen_request_total = ? WHERE genre_name = ?", [counter, genre])
  else
    $db.execute("INSERT INTO genres (genre_name, gen_request_total) VALUES (?, 1)", [genre])
    genres = $db.execute("SELECT * FROM genres")
    current_genre = genres.select{ |hash| hash["genre_name"] == genre }
  end
  #update request table
  artist_id = current_artist[0]["id"]
  genre_id = current_genre[0]["id"]
  $db.execute("INSERT INTO requests (artist_id, song, genre_id, request_origin, in_library, day) VALUES (?, ?, ?, ?, ?, ?)", [artist_id, song, genre_id, origin, library, date])
end

#create a method to check full request log
def check_requests
  requests = $db.execute("SELECT artist_name, song, genre_name, request_origin, in_library, day FROM requests 
  INNER JOIN artists
  ON requests.artist_id = artists.id
  INNER JOIN genres
  ON requests.genre_id = genres.id;
  ")
  requests.each do |hash|
    puts hash["artist_name"] + " " + hash["song"] + " " + hash["genre_name"] + " " + hash["request_origin"] + " " + hash["in_library"].to_s + " " + hash["day"].to_s
  end
end

#create a method to check most requested artist

#create a method to check most requested song

#create user interface






















