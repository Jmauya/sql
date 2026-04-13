/* INSTRUCTIONS:
1. Create a new table 'car_model' to hold attributes that depend on the model to satisfy 3NF.
2. Drop columns 'manufacturer' and 'type_car' from the original table as they are transitively dependent on 'model'.
*/

-- Create a new table to satisfy 3NF
CREATE TABLE car_model (
  model VARCHAR(128),
  manufacturer VARCHAR(128),
  type_car VARCHAR(128)
);

-- Drop columns in rental_cars to satisfy 3NF
ALTER TABLE rental_cars
DROP COLUMN manufacturer, 
DROP COLUMN type_car;
