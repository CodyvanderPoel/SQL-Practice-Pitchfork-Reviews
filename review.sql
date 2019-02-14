-- CREATE TABLE IF NOT EXISTS reviews (
    -- id INTEGER PRIMARY KEY,
    -- url TEXT,
    -- reviewerId INTEGER REFERENCES reviewers(id),
    -- albumId INTEGER REFERENCES albums(id),
    -- release_date DATE,
    -- score FLOAT,
    -- is_best_music BOOLEAN
-- );
-- 
-- DROP TABLE reviews;

-- Tests to make sure the db works
-- INSERT INTO reviews (id, url, reviewerId, albumId, release_date, score, is_best_music)
-- VALUES ('22703', 'http://pitchfork.com/reviews/albums/22703-mezzanine/', (SELECT id FROM reviewers WHERE username ='Nate Patrin'),(SELECT id FROM albums WHERE title ='Mezzanine'), '2017-01-08', '9.3', 'false')

