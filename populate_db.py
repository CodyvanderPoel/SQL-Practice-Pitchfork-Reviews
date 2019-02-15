from records import Database
from json import load

reviews = load(open('./reviews.json'))

db = Database('postgres:///pitchfork-reviews')

i = 0
for review in reviews:
    album = review['album']
    album_id = db.query_file('./insert_album.sql', **album).first().id
    reviewer = review['author']
    reviewer_id = db.query_file('./insert_reviewer.sql', **reviewer ).first().id
    idn = review['id']
    url = review['url']
    date = review['date']
    year = date['year']
    month = date['month']
    day = date['day']
    release_date = f'{year}-{month}-{day}'
    score = review['score']
    ibm = review['is_best_new_music']
    i += 1
    print(i)

    db.query_file(
        "insert_review.sql",
        url=url,
        reviewerId=reviewer_id,
        albumId=album_id,
        release_date=release_date,
        score=score,
        is_best_music=ibm
        )
