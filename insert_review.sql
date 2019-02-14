INSERT INTO reviews (
    id,
    url,
    reviewerId,
    albumId,
    release_date,
    score,
    is_best_music
)
VALUES (
    :id,
    :url,
    :reviewerId,
    :albumId,
    :release_date,
    :score,
    :is_best_music
)
