 -- Create a dimension table called route that will hold the route information.
CREATE TABLE route (
    route_id SERIAL PRIMARY KEY,
    route_name VARCHAR(160),
    park_name VARCHAR(160),
    city_name VARCHAR(160)
);

-- Create a dimension table called week that will hold the week information.
CREATE TABLE week (
    week_id SERIAL PRIMARY KEY,
    week INT,
    month VARCHAR(160),
    year INT
);
