-- THE NOT NULL USE WHERE THE VALUE IS MUST NEED ( Train PNR is an example)


CREATE DATABASE railway_system;

USE railway_system; -- to use the database


CREATE TABLE user_details(
    user_id VARCHAR(255),
    user_name VARCHAR(255) NOT NULL,
    pnr_number INTEGER NOT NULL,
    user_mail VARCHAR(255) NOT NULL-- here the value will not be null ( there must be any value (null default))
)