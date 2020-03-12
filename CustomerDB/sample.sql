select * from customer;
SELECT * 
	FROM customer
    -- single comment: on way to do this
    -- WHERE state = 'OH' 
    -- WHERE state = 'IN'
    -- another way:
    WHERE state in ('OH', 'IN')
    ORDER BY name;
