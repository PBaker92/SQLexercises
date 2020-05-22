-- List all the reviews for a given restaurant given a specific restaurantV2 ID.
SELECT review 
    FROM review, restaurantV2 
        WHERE restaurantV2.id = 2 AND restaurantV2.id = review.restaurantV2_id;

-- List all the reviews for a given restaurantV2, given a specific restaurantV2 name.
SELECT review 
FROM review, restaurantV2 
WHERE restaurant_name = 'Chad Thai' AND restaurantV2.id = review.restaurantV2_id;
-- List all the reviews for a given reviewer, given a specific author name. NOT WORKING
SELECT review 
FROM review, reviewer 
WHERE reviewer.name="Karen" AND reviewer.id = review.review_id
-- List all the reviews along with the restaurantV2 they were written for. In the query result, select the restaurantV2 name and the review text.
SELECT review, restaurantv2.restaurant_name
FROM review, restaurantV2 
WHERE restaurantV2.id = review.restaurantV2_id;


-- Get the average stars by restaurant. The result should have the restaurant name and its average star rating. NOT WORKING

-- Get the number of reviews written for each restaurantV2. The result should have the restaurant name and its review count.
SELECT COUNT(review.review), restaurantv2.restaurant_name 
FROM review, restaurantV2
WHERE restaurantV2.id = review.restaurantV2_id
GROUP BY restaurantv2.restaurant_name;
-- List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.
SELECT restaurantv2.restaurant_name, review.review, reviewer.name 
FROM restaurantV2, review, reviewer
WHERE restaurantV2.id = review.restaurantV2_id;

-- Get the average stars given by each reviewer. (reviewer name, average star rating)

-- Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)

-- Get the number of restaurants in each category. (category name, restaurantV2 count)
SELECT COUNT(*), restaurantv2.restaurant_name FROM restaurantV2 WHERE category = 'Thai' GROUP BY restaurantv2.restaurant_name;
SELECT COUNT(*), restaurantv2.restaurant_name FROM restaurantV2 WHERE category = 'Italian' GROUP BY restaurantv2.restaurant_name;
SELECT COUNT(*), restaurantv2.restaurant_name FROM restaurantV2 WHERE category = 'BBQ' GROUP BY restaurantv2.restaurant_name;


-- Get number of 5 star reviews given by restaurantV2. (restaurantV2 name, 5-star count)
SELECT restaurantv2.restaurant_name, COUNT(stars) 
FROM review, restaurantV2 
WHERE review.restaurantV2_id = restaurantV2.id AND stars = 5 
GROUP BY restaurantv2.restaurant_name;

-- Get the average star rating for a food category. (category name, average star rating)
SELECT restaurantV2.category, AVG(stars) 
FROM review, restaurantV2 
WHERE review.restaurantV2_id = restaurantV2.id 
GROUP BY restaurantV2.category;