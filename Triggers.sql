DROP TABLE T_AUDIT_TZ_USER CASCADE CONSTRAINTS;
DROP TABLE T_AUDIT_TZ_ADDRESS CASCADE CONSTRAINTS;
DROP TABLE T_AUDIT_TZ_ADDITIONAL_DATA CASCADE CONSTRAINTS;
DROP TABLE T_AUDIT_TZ_SOLAR_PANEL_TYPE CASCADE CONSTRAINTS;
DROP TABLE T_AUDIT_TZ_SOLAR_PANEL CASCADE CONSTRAINTS;
DROP TABLE T_AUDIT_TZ_WIND_TURBINE_TYPE CASCADE CONSTRAINTS;
DROP TABLE T_AUDIT_TZ_WIND_TURBINE CASCADE CONSTRAINTS;
DROP TABLE T_AUDIT_TZ_CONTRACTED_PLAN CASCADE CONSTRAINTS;


DROP SEQUENCE SEQ_AUDIT_TZ_USER;
DROP SEQUENCE SEQ_AUDIT_TZ_ADDRESS;
DROP SEQUENCE SEQ_AUDIT_TZ_ADDITIONAL_DATA;
DROP SEQUENCE SEQ_AUDIT_TZ_SOLAR_PANEL_TYPE;
DROP SEQUENCE SEQ_AUDIT_TZ_SOLAR_PANEL;
DROP SEQUENCE SEQ_AUDIT_TZ_WIND_TURBINE_TYPE;
DROP SEQUENCE SEQ_AUDIT_TZ_WIND_TURBINE;
DROP SEQUENCE SEQ_AUDIT_TZ_CONTRACTED_PLAN;


CREATE SEQUENCE SEQ_AUDIT_TZ_USER START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_AUDIT_TZ_ADDRESS START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_AUDIT_TZ_ADDITIONAL_DATA START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_AUDIT_TZ_SOLAR_PANEL_TYPE START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_AUDIT_TZ_SOLAR_PANEL START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_AUDIT_TZ_WIND_TURBINE_TYPE START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_AUDIT_TZ_WIND_TURBINE START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_AUDIT_TZ_CONTRACTED_PLAN START WITH 1 INCREMENT BY 1;


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_USER
CREATE TABLE T_AUDIT_TZ_USER (
    audit_id INTEGER PRIMARY KEY,
    id_user INTEGER,
    ds_user_name VARCHAR(100),
    ds_surname VARCHAR(100),
    ds_email VARCHAR(150),
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_USER
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_USER
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_USER (AUDIT_ID, id_user, ds_user_name, ds_surname, ds_email, operation_type)
        VALUES (SEQ_AUDIT_TZ_USER.NEXTVAL, :NEW.id_user, :NEW.ds_user_name, :NEW.ds_surname, :NEW.ds_email, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_USER (AUDIT_ID, id_user, ds_user_name, ds_surname, ds_email, operation_type)
        VALUES (SEQ_AUDIT_TZ_USER.NEXTVAL, :NEW.id_user, :NEW.ds_user_name, :NEW.ds_surname, :NEW.ds_email, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_USER (AUDIT_ID, id_user, ds_user_name, ds_surname, ds_email, operation_type)
        VALUES (SEQ_AUDIT_TZ_USER.NEXTVAL, :OLD.id_user, :OLD.ds_user_name, :OLD.ds_surname, :OLD.ds_email, 'DELETE');
    END IF;
END;
/


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_ADDRESS
CREATE TABLE T_AUDIT_TZ_ADDRESS (
    AUDIT_ID INTEGER PRIMARY KEY,
    id_address INTEGER,
    ds_street VARCHAR(255),
    ds_number INTEGER,
    ds_neighborhood VARCHAR(100),
    ds_city VARCHAR(100),
    ds_state VARCHAR(50),
    id_user INTEGER,
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_ADDRESS
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_ADDRESS
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_ADDRESS (AUDIT_ID, id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user, operation_type)
        VALUES (SEQ_AUDIT_TZ_ADDRESS.NEXTVAL, :NEW.id_address, :NEW.ds_street, :NEW.ds_number, :NEW.ds_neighborhood, :NEW.ds_city, :NEW.ds_state, :NEW.id_user, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_ADDRESS (AUDIT_ID, id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user, operation_type)
        VALUES (SEQ_AUDIT_TZ_ADDRESS.NEXTVAL, :NEW.id_address, :NEW.ds_street, :NEW.ds_number, :NEW.ds_neighborhood, :NEW.ds_city, :NEW.ds_state, :NEW.id_user, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_ADDRESS (AUDIT_ID, id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user, operation_type)
        VALUES (SEQ_AUDIT_TZ_ADDRESS.NEXTVAL, :OLD.id_address, :OLD.ds_street, :OLD.ds_number, :OLD.ds_neighborhood, :OLD.ds_city, :OLD.ds_state, :OLD.id_user, 'DELETE');
    END IF;
END;
/


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_ADDITIONAL_DATA
CREATE TABLE T_AUDIT_TZ_ADDITIONAL_DATA (
    AUDIT_ID INTEGER PRIMARY KEY,
    id_additional_data INTEGER,
    dt_birth_date VARCHAR(20),
    ds_cpf VARCHAR(14),
    ds_telephone VARCHAR(15),
    id_user INTEGER,
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_ADDITIONAL_DATA
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_ADDITIONAL_DATA
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_ADDITIONAL_DATA (AUDIT_ID, id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user, operation_type)
        VALUES (SEQ_AUDIT_TZ_ADDITIONAL_DATA.NEXTVAL, :NEW.id_additional_data, :NEW.dt_birth_date, :NEW.ds_cpf, :NEW.ds_telephone, :NEW.id_user, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_ADDITIONAL_DATA (AUDIT_ID, id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user, operation_type)
        VALUES (SEQ_AUDIT_TZ_ADDITIONAL_DATA.NEXTVAL, :NEW.id_additional_data, :NEW.dt_birth_date, :NEW.ds_cpf, :NEW.ds_telephone, :NEW.id_user, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_ADDITIONAL_DATA (AUDIT_ID, id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user, operation_type)
        VALUES (SEQ_AUDIT_TZ_ADDITIONAL_DATA.NEXTVAL, :OLD.id_additional_data, :OLD.dt_birth_date, :OLD.ds_cpf, :OLD.ds_telephone, :OLD.id_user, 'DELETE');
    END IF;
END;
/


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_SOLAR_PANEL_TYPE
CREATE TABLE T_AUDIT_TZ_SOLAR_PANEL_TYPE (
    AUDIT_ID INTEGER PRIMARY KEY,
    id_solar_plate_type INTEGER,
    ds_voltage FLOAT,
    ds_model VARCHAR(100),
    ds_manufacturer VARCHAR(100),
    ds_cell_type VARCHAR(50),
    vl_cost_per_watt FLOAT,
    nr_product_warranty INTEGER,
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_SOLAR_PANEL_TYPE
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_SOLAR_PANEL_TYPE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_SOLAR_PANEL_TYPE (AUDIT_ID, id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty, operation_type)
        VALUES (SEQ_AUDIT_TZ_SOLAR_PANEL_TYPE.NEXTVAL, :NEW.id_solar_plate_type, :NEW.ds_voltage, :NEW.ds_model, :NEW.ds_manufacturer, :NEW.ds_cell_type, :NEW.vl_cost_per_watt, :NEW.nr_product_warranty, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_SOLAR_PANEL_TYPE (AUDIT_ID, id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty, operation_type)
        VALUES (SEQ_AUDIT_TZ_SOLAR_PANEL_TYPE.NEXTVAL, :NEW.id_solar_plate_type, :NEW.ds_voltage, :NEW.ds_model, :NEW.ds_manufacturer, :NEW.ds_cell_type, :NEW.vl_cost_per_watt, :NEW.nr_product_warranty, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_SOLAR_PANEL_TYPE (AUDIT_ID, id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty, operation_type)
        VALUES (SEQ_AUDIT_TZ_SOLAR_PANEL_TYPE.NEXTVAL, :OLD.id_solar_plate_type, :OLD.ds_voltage, :OLD.ds_model, :OLD.ds_manufacturer, :OLD.ds_cell_type, :OLD.vl_cost_per_watt, :OLD.nr_product_warranty, 'DELETE');
    END IF;
END;
/


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_SOLAR_PANEL
CREATE TABLE T_AUDIT_TZ_SOLAR_PANEL (
    AUDIT_ID INTEGER PRIMARY KEY,
    id_solar_board INTEGER,
    vl_siza FLOAT,
    vl_price FLOAT,
    ds_material VARCHAR(100),
    id_solar_plate_type INTEGER,
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_SOLAR_PANEL
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_SOLAR_PANEL
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_SOLAR_PANEL (AUDIT_ID, id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type, operation_type)
        VALUES (SEQ_AUDIT_TZ_SOLAR_PANEL.NEXTVAL, :NEW.id_solar_board, :NEW.vl_siza, :NEW.vl_price, :NEW.ds_material, :NEW.id_solar_plate_type, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_SOLAR_PANEL (AUDIT_ID, id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type, operation_type)
        VALUES (SEQ_AUDIT_TZ_SOLAR_PANEL.NEXTVAL, :NEW.id_solar_board, :NEW.vl_siza, :NEW.vl_price, :NEW.ds_material, :NEW.id_solar_plate_type, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_SOLAR_PANEL (AUDIT_ID, id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type, operation_type)
        VALUES (SEQ_AUDIT_TZ_SOLAR_PANEL.NEXTVAL, :OLD.id_solar_board, :OLD.vl_siza, :OLD.vl_price, :OLD.ds_material, :OLD.id_solar_plate_type, 'DELETE');
    END IF;
END;
/


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_WIND_TURBINE_TYPE
CREATE TABLE T_AUDIT_TZ_WIND_TURBINE_TYPE (
    AUDIT_ID INTEGER PRIMARY KEY,
    id_type_turbine INTEGER,
    ds_voltage FLOAT,
    ds_model VARCHAR(100),
    ds_manufacturer VARCHAR(100),
    ds_generator_type VARCHAR(50),
    nr_warranty_years INTEGER,
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_WIND_TURBINE_TYPE
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_WIND_TURBINE_TYPE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_WIND_TURBINE_TYPE (AUDIT_ID, id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years, operation_type)
        VALUES (SEQ_AUDIT_TZ_WIND_TURBINE_TYPE.NEXTVAL, :NEW.id_type_turbine, :NEW.ds_voltage, :NEW.ds_model, :NEW.ds_manufacturer, :NEW.ds_generator_type, :NEW.nr_warranty_years, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_WIND_TURBINE_TYPE (AUDIT_ID, id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years, operation_type)
        VALUES (SEQ_AUDIT_TZ_WIND_TURBINE_TYPE.NEXTVAL, :NEW.id_type_turbine, :NEW.ds_voltage, :NEW.ds_model, :NEW.ds_manufacturer, :NEW.ds_generator_type, :NEW.nr_warranty_years, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_WIND_TURBINE_TYPE (AUDIT_ID, id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years, operation_type)
        VALUES (SEQ_AUDIT_TZ_WIND_TURBINE_TYPE.NEXTVAL, :OLD.id_type_turbine, :OLD.ds_voltage, :OLD.ds_model, :OLD.ds_manufacturer, :OLD.ds_generator_type, :OLD.nr_warranty_years, 'DELETE');
    END IF;
END;
/


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_WIND_TURBINE
CREATE TABLE T_AUDIT_TZ_WIND_TURBINE (
    AUDIT_ID INTEGER PRIMARY KEY,
    id_turbine_wind INTEGER,
    vl_size FLOAT,
    vl_price FLOAT,
    ds_material VARCHAR(100),
    id_type_turbine INTEGER,
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_WIND_TURBINE
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_WIND_TURBINE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_WIND_TURBINE (AUDIT_ID, id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine, operation_type)
        VALUES (SEQ_AUDIT_TZ_WIND_TURBINE.NEXTVAL, :NEW.id_turbine_wind, :NEW.vl_size, :NEW.vl_price, :NEW.ds_material, :NEW.id_type_turbine, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_WIND_TURBINE (AUDIT_ID, id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine, operation_type)
        VALUES (SEQ_AUDIT_TZ_WIND_TURBINE.NEXTVAL, :NEW.id_turbine_wind, :NEW.vl_size, :NEW.vl_price, :NEW.ds_material, :NEW.id_type_turbine, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_WIND_TURBINE (AUDIT_ID, id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine, operation_type)
        VALUES (SEQ_AUDIT_TZ_WIND_TURBINE.NEXTVAL, :OLD.id_turbine_wind, :OLD.vl_size, :OLD.vl_price, :OLD.ds_material, :OLD.id_type_turbine, 'DELETE');
    END IF;
END;
/


--TRIGGER DE AUDITORIA PARA A TABELA T_TZ_CONTRACTED_PLAN
CREATE TABLE T_AUDIT_TZ_CONTRACTED_PLAN (
    AUDIT_ID INTEGER PRIMARY KEY,
    id_contracted_plan INTEGER,
    id_user INTEGER,
    id_solar_board INTEGER,
    id_turbine_wind INTEGER,
    operation_type VARCHAR(10),
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/

CREATE OR REPLACE TRIGGER TRG_AUDIT_TZ_CONTRACTED_PLAN
AFTER INSERT OR UPDATE OR DELETE
ON T_TZ_CONTRACTED_PLAN
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO T_AUDIT_TZ_CONTRACTED_PLAN (AUDIT_ID, id_contracted_plan, id_user, id_solar_board, id_turbine_wind, operation_type)
        VALUES (SEQ_AUDIT_TZ_CONTRACTED_PLAN.NEXTVAL, :NEW.id_contracted_plan, :NEW.id_user, :NEW.id_solar_board, :NEW.id_turbine_wind, 'INSERT');
    END IF;
    IF UPDATING THEN
        INSERT INTO T_AUDIT_TZ_CONTRACTED_PLAN (AUDIT_ID, id_contracted_plan, id_user, id_solar_board, id_turbine_wind, operation_type)
        VALUES (SEQ_AUDIT_TZ_CONTRACTED_PLAN.NEXTVAL, :NEW.id_contracted_plan, :NEW.id_user, :NEW.id_solar_board, :NEW.id_turbine_wind, 'UPDATE');
    END IF;
    IF DELETING THEN
        INSERT INTO T_AUDIT_TZ_CONTRACTED_PLAN (AUDIT_ID, id_contracted_plan, id_user, id_solar_board, id_turbine_wind, operation_type)
        VALUES (SEQ_AUDIT_TZ_CONTRACTED_PLAN.NEXTVAL, :OLD.id_contracted_plan, :OLD.id_user, :OLD.id_solar_board, :OLD.id_turbine_wind, 'DELETE');
    END IF;
END;
/