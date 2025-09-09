USE railway_system;


CREATE TABLE IF NOT EXISTS travelsers(
    user_id VARCHAR(255),
    user_name VARCHAR(255) NOT NULL,
    pnr_number INTEGER NOT NULL,
    user_mail VARCHAR(255) NOT NULL,

    CONSTRAINT user_unique UNIQUE(user_email, user_name) 
    -- by writing in this way the value of the combination of the two columns will not bo repeated
)

