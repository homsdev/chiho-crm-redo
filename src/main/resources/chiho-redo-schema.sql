CREATE TABLE person(
    user_id VARCHAR2(100),
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    password VARCHAR2(60),
    email VARCHAR2(100),
    role_id VARCHAR2(100),
    address_id VARCHAR2(100),
    PRIMARY KEY (user_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES user_role(role_id),
    CONSTRAINT fk_address FOREIGN KEY (address_id) REFERENCES address(address_id)
)

CREATE TABLE address(
    address_id VARCHAR2(100),
    address VARCHAR2(50),
    address2 VARCHAR2(50),
    district VARCHAR2(20),
    postal_code VARCHAR2(10),
    phone VARCHAR2(20),
    city_id VARCHAR2(100),
    PRIMARY KEY(address_id),
    CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE city(
    city_id VARCHAR2(100),
    city VARCHAR(50),
    country_id VARCHAR2(100),
    PRIMARY KEY(city_id),
    CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES country(country_id)
)

CREATE TABLE country(
    country_id VARCHAR2(100),
    country VARCHAR2(100),
    PRIMARY KEY (country_id)
)

CREATE TABLE user_role(
    role_id VARCHAR2(100),
    role_description VARCHAR2(100),
    PRIMARY KEY (role_id)
)
 