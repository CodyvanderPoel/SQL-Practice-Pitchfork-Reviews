from records import Database
from json import load

reviews = load(open('./reviews.json'))

db = Database('postgres:///pitchfork-reviews')

for review in reviews:
    album = review['album']
    album_id = db.query_file('./insert_album.sql', **album).first().id

    db.query_file("insert_review.sql", album_id=album_id)
