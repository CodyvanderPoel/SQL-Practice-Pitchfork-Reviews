CREATE TABLE IF NOT EXISTS albums (
    id SERIAL PRIMARY KEY,
    title TEXT,
    artist TEXT,
    label TEXT,
    genre TEXT
);

CREATE TABLE IF NOT EXISTS reviewers (
    id SERIAL PRIMARY KEY,
    username TEXT,
    type_of_user TEXT
);

CREATE TABLE IF NOT EXISTS reviews (
    id SERIAL PRIMARY KEY,
    url TEXT,
    reviewerId INTEGER REFERENCES reviewers(id),
    albumId INTEGER REFERENCES albums(id),
    release_date DATE,
    score FLOAT,
    is_best_music BOOLEAN
);

-- DROP TABLE album;

-- DROP TABLE reviewers;

-- DROP TABLE reviews;
