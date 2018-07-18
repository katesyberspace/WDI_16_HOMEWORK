CREATE TABLE movies (
  id SERIAL4 PRIMARY KEY,
  imdbID VARCHAR(200) NOT NULL,
  title VARCHAR(1000) NOT NULL,
  year INTEGER,
  plot TEXT,
  poster VARCHAR(2000),
  actors VARCHAR(2000),
  rating VARCHAR(4),
  vote INTEGER
);

