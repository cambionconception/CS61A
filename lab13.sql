.read data.sql


CREATE TABLE bluedog AS
  SELECT color,pet from students where color = 'blue' and pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color,pet,song from students where color = 'blue' and pet = 'dog';


CREATE TABLE smallest_int_having AS
  SELECT time,smallest from students group by smallest having sum(smallest) = smallest;


CREATE TABLE matchmaker AS
  SELECT a.pet,a.song,a.color,b.color from students as a,students as b where a.pet = b.pet and a.song = b.song and b.time > a.time;


CREATE TABLE sevens AS
  SELECT seven from students,numbers where number = 7 and '7' = 7;


CREATE TABLE average_prices AS
  SELECT category,avg(price) from products group by category;


CREATE TABLE lowest_prices AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


CREATE TABLE shopping_list AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


CREATE TABLE total_bandwidth AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

