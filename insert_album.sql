INSERT INTO albums (
    title,
    artist,
    label,
    genre
)
VALUES (
    :title,
    :artist,
    :label,
    :genre
)
RETURNING id
