-- by using unique cmd in the db there will be no same value in a column means we can add a value once only
-- repeataion no allow


SHOW DATABASES;
USE railway_system;


CREATE TABLE IF NOT EXISTS travelsers(
    user_id VARCHAR(255),
    user_name VARCHAR(255) NOT NULL,
    pnr_number INTEGER NOT NULL,
    user_mail VARCHAR(255) NOT NULL UNIQUE -- the gmail will be unique in the table
)

