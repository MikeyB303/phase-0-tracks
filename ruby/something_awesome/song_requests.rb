#Song Request Log

#require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("request_log.db")
db.results_as_hash = true

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
    in_library INT,
    request_origin VARCHAR(255),
    genre_id INT,
    day DATE,
    FOREIGN KEY (artist_id) REFERENCES artist(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
  )
SQL

db.execute(create_artists_table)
db.execute(create_genres_table)
db.execute(create_requests_table)

#create a method to add a request

#create a method to check full request log

#create user interface






















