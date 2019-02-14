INSERT INTO reviewers (
    username,
    type_of_user
)
VALUES (
    :name,
    :type
)
RETURNING id
