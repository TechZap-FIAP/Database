CREATE OR REPLACE PROCEDURE INSERT_T_TZ_USER(
    p_id_user IN T_TZ_USER.id_user%TYPE,
    p_ds_user_name IN T_TZ_USER.ds_user_name%TYPE,
    p_ds_surname IN T_TZ_USER.ds_surname%TYPE,
    p_ds_email IN T_TZ_USER.ds_email%TYPE,
    p_ds_password IN T_TZ_USER.ds_password%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_USER(id_user, ds_user_name, ds_surname, ds_email, ds_password)
    VALUES (p_id_user, p_ds_user_name, p_ds_surname, p_ds_email, p_ds_password);
    COMMIT;
END INSERT_T_TZ_USER;
/

CREATE OR REPLACE PROCEDURE INSERT_T_TZ_ADDRESS(
    p_id_address IN T_TZ_ADDRESS.id_address%TYPE,
    p_ds_street IN T_TZ_ADDRESS.ds_street%TYPE,
    p_ds_number IN T_TZ_ADDRESS.ds_number%TYPE,
    p_ds_neighborhood IN T_TZ_ADDRESS.ds_neighborhood%TYPE,
    p_ds_city IN T_TZ_ADDRESS.ds_city%TYPE,
    p_ds_state IN T_TZ_ADDRESS.ds_state%TYPE,
    p_id_user IN T_TZ_ADDRESS.id_user%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_ADDRESS(id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user)
    VALUES (p_id_address, p_ds_street, p_ds_number, p_ds_neighborhood, p_ds_city, p_ds_state, p_id_user);
    COMMIT;
END INSERT_T_TZ_ADDRESS;
/

CREATE OR REPLACE PROCEDURE INSERT_T_TZ_ADDITIONAL_DATA(
    p_id_additional_data IN T_TZ_ADDITIONAL_DATA.id_additional_data%TYPE,
    p_dt_birth_date IN T_TZ_ADDITIONAL_DATA.dt_birth_date%TYPE,
    p_ds_cpf IN T_TZ_ADDITIONAL_DATA.ds_cpf%TYPE,
    p_ds_telephone IN T_TZ_ADDITIONAL_DATA.ds_telephone%TYPE,
    p_id_user IN T_TZ_ADDITIONAL_DATA.id_user%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_ADDITIONAL_DATA(id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user)
    VALUES (p_id_additional_data, p_dt_birth_date, p_ds_cpf, p_ds_telephone, p_id_user);
    COMMIT;
END INSERT_T_TZ_ADDITIONAL_DATA;
/

CREATE OR REPLACE PROCEDURE INSERT_T_TZ_SOLAR_PANEL_TYPE(
    p_id_solar_plate_type IN T_TZ_SOLAR_PANEL_TYPE.id_solar_plate_type%TYPE,
    p_ds_voltage IN T_TZ_SOLAR_PANEL_TYPE.ds_voltage%TYPE,
    p_ds_model IN T_TZ_SOLAR_PANEL_TYPE.ds_model%TYPE,
    p_ds_manufacturer IN T_TZ_SOLAR_PANEL_TYPE.ds_manufacturer%TYPE,
    p_ds_cell_type IN T_TZ_SOLAR_PANEL_TYPE.ds_cell_type%TYPE,
    p_vl_cost_per_watt IN T_TZ_SOLAR_PANEL_TYPE.vl_cost_per_watt%TYPE,
    p_nr_product_warranty IN T_TZ_SOLAR_PANEL_TYPE.nr_product_warranty%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_SOLAR_PANEL_TYPE(id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty)
    VALUES (p_id_solar_plate_type, p_ds_voltage, p_ds_model, p_ds_manufacturer, p_ds_cell_type, p_vl_cost_per_watt, p_nr_product_warranty);
    COMMIT;
END INSERT_T_TZ_SOLAR_PANEL_TYPE;
/

CREATE OR REPLACE PROCEDURE INSERT_T_TZ_SOLAR_PANEL(
    p_id_solar_board IN T_TZ_SOLAR_PANEL.id_solar_board%TYPE,
    p_vl_siza IN T_TZ_SOLAR_PANEL.vl_siza%TYPE,
    p_vl_price IN T_TZ_SOLAR_PANEL.vl_price%TYPE,
    p_ds_material IN T_TZ_SOLAR_PANEL.ds_material%TYPE,
    p_id_solar_plate_type IN T_TZ_SOLAR_PANEL.id_solar_plate_type%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_SOLAR_PANEL(id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type)
    VALUES (p_id_solar_board, p_vl_siza, p_vl_price, p_ds_material, p_id_solar_plate_type);
    COMMIT;
END INSERT_T_TZ_SOLAR_PANEL;
/

CREATE OR REPLACE PROCEDURE INSERT_T_TZ_WIND_TURBINE_TYPE(
    p_id_type_turbine IN T_TZ_WIND_TURBINE_TYPE.id_type_turbine%TYPE,
    p_ds_voltage IN T_TZ_WIND_TURBINE_TYPE.ds_voltage%TYPE,
    p_ds_model IN T_TZ_WIND_TURBINE_TYPE.ds_model%TYPE,
    p_ds_manufacturer IN T_TZ_WIND_TURBINE_TYPE.ds_manufacturer%TYPE,
    p_ds_generator_type IN T_TZ_WIND_TURBINE_TYPE.ds_generator_type%TYPE,
    p_nr_warranty_years IN T_TZ_WIND_TURBINE_TYPE.nr_warranty_years%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_WIND_TURBINE_TYPE(id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years)
    VALUES (p_id_type_turbine, p_ds_voltage, p_ds_model, p_ds_manufacturer, p_ds_generator_type, p_nr_warranty_years);
    COMMIT;
END INSERT_T_TZ_WIND_TURBINE_TYPE;
/

CREATE OR REPLACE PROCEDURE INSERT_T_TZ_WIND_TURBINE(
    p_id_turbine_wind IN T_TZ_WIND_TURBINE.id_turbine_wind%TYPE,
    p_vl_size IN T_TZ_WIND_TURBINE.vl_size%TYPE,
    p_vl_price IN T_TZ_WIND_TURBINE.vl_price%TYPE,
    p_ds_material IN T_TZ_WIND_TURBINE.ds_material%TYPE,
    p_id_type_turbine IN T_TZ_WIND_TURBINE.id_type_turbine%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_WIND_TURBINE(id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine)
    VALUES (p_id_turbine_wind, p_vl_size, p_vl_price, p_ds_material, p_id_type_turbine);
    COMMIT;
END INSERT_T_TZ_WIND_TURBINE;
/

CREATE OR REPLACE PROCEDURE INSERT_T_TZ_CONTRACTED_PLAN(
    p_id_contracted_plan IN T_TZ_CONTRACTED_PLAN.id_contracted_plan%TYPE,
    p_id_user IN T_TZ_CONTRACTED_PLAN.id_user%TYPE,
    p_id_solar_board IN T_TZ_CONTRACTED_PLAN.id_solar_board%TYPE,
    p_id_turbine_wind IN T_TZ_CONTRACTED_PLAN.id_turbine_wind%TYPE
) AS
BEGIN
    INSERT INTO T_TZ_CONTRACTED_PLAN(id_contracted_plan, id_user, id_solar_board, id_turbine_wind)
    VALUES (p_id_contracted_plan, p_id_user, p_id_solar_board, p_id_turbine_wind);
    COMMIT;
END INSERT_T_TZ_CONTRACTED_PLAN;
/