-- adding primary key to the features table
alter table features
ADD PRIMARY KEY (index);

-- adding foreign key to target_variable table
ALTER TABLE target_variable
ADD FOREIGN KEY (index) REFERENCES features(index);

-- Use Join to to store new table new_deaths_by_country
SELECT features.location,
target_variable.new_deaths
INTO new_deaths_by_country
FROM features
INNER JOIN target_variable ON
features.index = target_variable.index;
