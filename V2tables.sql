CREATE TABLE restaurantV2(
    id SERIAL PRIMARY KEY,
    restaurant_name VARCHAR NOT NULL,
ADDRESS VARCHAR NOT NULL,
    category VARCHAR
);

CREATE TABLE reviewer(
    id SERIAL PRIMARY KEY,
    NAME VARCHAR NOT NULL,
   reviewer_email VARCHAR NOT NULL,
    karma NUMERIC DEFAULT 0 CHECK (karma >= 0 AND KARMA <=7)
);

CREATE TABLE review(
    id SERIAL PRIMARY KEY,
    reviewer_id VARCHAR NOT NULL,
    stars INTEGER NOT NULL CHECK (stars >=1 AND stars <=5),
    title VARCHAR,
    review VARCHAR,
    restaurantV2_id INTEGER REFERENCES restaurantV2(id)
);

