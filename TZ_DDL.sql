DROP TABLE T_TZ_USER CASCADE CONSTRAINTS;
DROP TABLE T_TZ_ADDRESS CASCADE CONSTRAINTS;
DROP TABLE T_TZ_ADDITIONAL_DATA CASCADE CONSTRAINTS;
DROP TABLE T_TZ_SOLAR_PANEL_TYPE CASCADE CONSTRAINTS;
DROP TABLE T_TZ_SOLAR_PANEL CASCADE CONSTRAINTS;
DROP TABLE T_TZ_WIND_TURBINE_TYPE CASCADE CONSTRAINTS;
DROP TABLE T_TZ_WIND_TURBINE CASCADE CONSTRAINTS;
DROP TABLE T_TZ_CONTRACTED_PLAN CASCADE CONSTRAINTS;


-- SCRIPTS DE CRIA��O DAS TABELAS
CREATE TABLE T_TZ_USER (
    id_user INTEGER PRIMARY KEY,
    ds_user_name VARCHAR(100) NOT NULL,
    ds_surname VARCHAR(100) NOT NULL,
    ds_email VARCHAR(150) NOT NULL UNIQUE,
    ds_password VARCHAR(255) NOT NULL
);

CREATE TABLE T_TZ_ADDRESS (
    id_address INTEGER PRIMARY KEY,
    ds_street VARCHAR(255) NOT NULL,
    ds_number INTEGER NOT NULL,
    ds_neighborhood VARCHAR(100) NOT NULL,
    ds_city VARCHAR(100) NOT NULL,
    ds_state VARCHAR(50) NOT NULL,
    id_user INTEGER REFERENCES T_TZ_USER(id_user) NOT NULL
);

CREATE TABLE T_TZ_ADDITIONAL_DATA (
    id_additional_data INTEGER PRIMARY KEY,
    dt_birth_date VARCHAR(20) NOT NULL,
    ds_cpf VARCHAR(14) NOT NULL UNIQUE,
    ds_telephone VARCHAR(15),
    id_user INTEGER REFERENCES T_TZ_USER(id_user) NOT NULL
);

CREATE TABLE T_TZ_SOLAR_PANEL_TYPE (
    id_solar_plate_type INTEGER PRIMARY KEY,
    ds_voltage FLOAT NOT NULL,
    ds_model VARCHAR(100) NOT NULL,
    ds_manufacturer VARCHAR(100) NOT NULL,
    ds_cell_type VARCHAR(50),
    vl_cost_per_watt FLOAT,
    nr_product_warranty INTEGER
);

CREATE TABLE T_TZ_SOLAR_PANEL (
    id_solar_board INTEGER PRIMARY KEY,
    vl_siza FLOAT NOT NULL,
    vl_price FLOAT NOT NULL,
    ds_material VARCHAR(100),
    id_solar_plate_type INTEGER REFERENCES T_TZ_SOLAR_PANEL_TYPE(id_solar_plate_type) NOT NULL
);

CREATE TABLE T_TZ_WIND_TURBINE_TYPE (
    id_type_turbine INTEGER PRIMARY KEY,
    ds_voltage FLOAT NOT NULL,
    ds_model VARCHAR(100) NOT NULL,
    ds_manufacturer VARCHAR(100) NOT NULL,
    ds_generator_type VARCHAR(50),
    nr_warranty_years INTEGER
);

CREATE TABLE T_TZ_WIND_TURBINE (
    id_turbine_wind INTEGER PRIMARY KEY,
    vl_size FLOAT NOT NULL,
    vl_price FLOAT NOT NULL,
    ds_material VARCHAR(100),
    id_type_turbine INTEGER REFERENCES T_TZ_WIND_TURBINE_TYPE(id_type_turbine) NOT NULL
);

CREATE TABLE T_TZ_CONTRACTED_PLAN (
    id_contracted_plan INTEGER PRIMARY KEY,
    id_user INTEGER REFERENCES T_TZ_USER(id_user) NOT NULL,
    id_solar_board INTEGER REFERENCES T_TZ_SOLAR_PANEL(id_solar_board) NOT NULL,
    id_turbine_wind INTEGER REFERENCES T_TZ_WIND_TURBINE(id_turbine_wind) NOT NULL
);