CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
    select child from parents,dogs where name = parent order by -height;
  --SELECT name from dogs,parents where name = child order by height;--


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT name,size as size from dogs,sizes where height <= max and height > min;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  SELECT a.child as brother, b.child as sister from parents as a, parents as b where a.parent = b.parent and a.child < b.child;

-- Sentences about siblings that are the same size
CREATE TABLE same_size_dogs AS
  SELECT c.name as nic ,d.name as ken from size_of_dogs as c, size_of_dogs as d where c.size = d.size and c.name < d.name;

CREATE TABLE same_size_siblings AS
  SELECT brother,sister from siblings,same_size_dogs where brother = nic and sister = ken;

create table same_size_siblings2 as
  select brother,sister,size from same_size_siblings,size_of_dogs where brother = name;

CREATE TABLE sentences AS
  SELECT "The two siblings, " || brother || " plus " || sister || " have the same size: " || size from same_size_siblings2;