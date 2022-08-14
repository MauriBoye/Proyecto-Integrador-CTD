-- Stored procedure --

--CREATE PROCEDURE sp_filter_by_date_city_category(IN category_id INT, IN city_id INT, IN date_in DATE, IN date_out DATE, IN cant INT, IN offs INT)
--BEGIN
--	SELECT * FROM digital_booking.products p
--	LEFT JOIN digital_booking.reservation r
--	ON p.id = r.product_id
--	WHERE (r.id IS NULL OR (check_in > date_out OR check_out < date_in ) OR date_out = date_in)
--	AND (p.city_id = city_id OR city_id = 0)
--	AND (p.category_id = category_id OR category_id = 0)
--	GROUP BY p.id
--	HAVING (SELECT COUNT(id) AS cant_reserva FROM digital_booking.reservation r
--			WHERE product_id = p.id
--			GROUP BY r.product_id ) = COUNT(r.id) OR COUNT(r.id) = 0
--	LIMIT cant OFFSET offs;
--END

-- Category table --

--INSERT INTO `digital_booking`.`category` (title,description,url)
--VALUES ('Hoteles','507.105 alojamientos','https://media.istockphoto.com/photos/portrait-of-young-couple-tourist-standing-nearly-window-looking-to-picture-id1227060710?k=20&m=1227060710&s=612x612&w=0&h=sHszTIiX840cklpj5peumCwL5uapWst1-rfqXWuf9dE=');


-- 'feature' table------
--INSERT INTO `digital_booking`.`features` (name, type_feature)
--VALUES ('cocina', 0);


-- 'city' table--------

--INSERT INTO `digital_booking`.`city` (name,country)
--VALUES ('Buenos Aires','Argentina');

-- 'product' table-------

--INSERT INTO `digital_booking`.`products` (description,name,title,category_id,city_id)
--VALUES ('Hoteles en Buenos Aires','Hoteles Alexis','Hotel',1,1);

-- 'product_image' table------
--INSERT INTO `digital_booking`.`image` (title,url,product_id)
--VALUES ('imagen','url',1);

-- 'product-feacture'--
--INSERT INTO `digital_booking`.`products_features` (product_id,feature_id)
--VALUES (1,1);
