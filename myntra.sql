
use myntra;

-- 1. Find the most expensive product on Myntra.

SELECT * FROM products 
ORDER BY marked_price DESC ;

-- OR
SELECT MAX(marked_price) AS most_expensive FROM products;
SELECT product_name FROM products WHERE marked_price = '44950';

-- 2. Find the least expensive product on Myntra.

SELECT * FROM products 
ORDER BY marked_price ASC ;

-- OR
SELECT MIN(marked_price) AS MinEP FROM products;
SELECT product_name FROM products WHERE marked_price = '55';

-- 3. Find the top 5 most expensive products on Myntra.

SELECT * FROM products 
ORDER BY marked_price DESC LIMIT 5 ;

-- 4. Find the top 5 products based on rating * rating_count.

SELECT product_name, rating, rating_count, (rating * rating_count) FROM products
ORDER BY rating * rating_count DESC LIMIT 5;

-- 5. List tshirts ordered by combined rating.

SELECT product_tag, COUNT(rating) AS combined_rating FROM products
WHERE product_tag = 'tshirts';

-- 6. Find the second most expensive product.

SELECT product_name, marked_price FROM products 
ORDER BY marked_price DESC LIMIT 2;

-- 7. Find the second least expensive product.

SELECT product_name, marked_price FROM products 
ORDER BY marked_price ASC LIMIT 2;

-- 8. Find the 10th most expensive product.

SELECT product_name, marked_price FROM products 
ORDER BY marked_price DESC LIMIT 10;

-- 9. Find the worst-rated Nike product.

SELECT product_name, rating, rating_count FROM products
WHERE brand_tag = 'Nike' AND rating != 0
ORDER BY rating ASC LIMIT 5;

-- 10. Find the worst-rated Nike product where rating is not zero.

SELECT Product_name, brand_tag, rating FROM products
WHERE brand_tag = 'Nike' AND rating != 0
ORDER BY rating ;

-- 11. Find the top 10 best-rated tshirts from Nike or Adidas.

SELECT product_name, product_tag, brand_tag, rating, rating_count FROM products
WHERE brand_tag IN ('Nike','Adidas') AND (product_tag = 'tshirts')
ORDER BY rating DESC LIMIT 10;

-- 12. Find the 10 worst-rated products with at least 100 ratings.

SELECT product_name, product_tag, rating, rating_count FROM products
WHERE rating_count > (100)
ORDER BY rating_count LIMIT 10;

-- 13. Find the 10 worst-rated tshirts with at least 100 ratings.

SELECT product_name, product_tag, rating, rating_count FROM products
WHERE product_tag = 'tshirts' AND rating_count >100
ORDER BY rating_count LIMIT 10;

-- 14. Sort products alphabetically and show last 10.

SELECT product_name FROM products
ORDER BY product_name DESC LIMIT 10;

-- 15. List Nike & Adidas tshirts priced between 1000–1200 sorted by brand & price.

SELECT product_name, product_tag, brand_tag, marked_price FROM products
WHERE product_tag = 'tshirts' AND brand_tag IN ('Nike','Adidas') AND( marked_price BETWEEN 1000 AND 1200)
ORDER BY brand_tag, marked_price;

-- 16. List Nike & Adidas tshirts priced between 1000–2000 sorted by price & brand.

SELECT product_name, product_tag, brand_tag, marked_price FROM products
WHERE product_tag = 'tshirts' AND brand_tag IN ('Nike','Adidas') AND( marked_price BETWEEN 1000 AND 2000)
ORDER BY brand_tag, marked_price;