INSERT INTO reviews (
    url,
    reviewerId,
    albumId,
    release_date,
    score,
    is_best_music
)
VALUES (
    :url,
    :reviewerId,
    :albumId,
    :release_date,
    :score,
    :is_best_music
)
