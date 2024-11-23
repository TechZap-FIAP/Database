--T_TZ_USER
INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (1, 'John', 'Doe', 'johndoe@gmail.com', 'password123');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (2, 'Jane', 'Smith', 'janesmith@yahoo.com', 'mypassword456');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (3, 'Emily', 'Johnson', 'emilyj@icloud.com', 'securepass789');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (4, 'Michael', 'Brown', 'michaelb@hotmail.com', 'passcode101');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (5, 'Chris', 'Davis', 'chrisd@gmail.com', 'qwerty202');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (6, 'Anna', 'Miller', 'annam@yahoo.com', 'zxcvbn303');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (7, 'James', 'Wilson', 'jamesw@icloud.com', 'pass123abc');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (8, 'Laura', 'Moore', 'lauram@hotmail.com', 'strongpass456');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (9, 'David', 'Taylor', 'davidt@gmail.com', 'easy456secure');

INSERT INTO T_TZ_USER (id_user, ds_user_name, ds_surname, ds_email, ds_password) 
VALUES (10, 'Sophia', 'Anderson', 'sophiaa@yahoo.com', 'unique789pass');


--T_TZ_ADDRESS
INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (1, 'Main Street', 101, 'Downtown', 'New York', 'NY', 1);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (2, 'Elm Street', 202, 'Midtown', 'Los Angeles', 'CA', 2);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (3, 'Oak Avenue', 303, 'Uptown', 'Chicago', 'IL', 3);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (4, 'Maple Road', 404, 'Suburbs', 'Houston', 'TX', 4);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (5, 'Pine Street', 505, 'Old Town', 'Phoenix', 'AZ', 5);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (6, 'Birch Lane', 606, 'City Center', 'Philadelphia', 'PA', 6);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (7, 'Cedar Street', 707, 'Historic District', 'San Antonio', 'TX', 7);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (8, 'Spruce Boulevard', 808, 'West Side', 'San Diego', 'CA', 8);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (9, 'Willow Way', 909, 'East Side', 'Dallas', 'TX', 9);

INSERT INTO T_TZ_ADDRESS (id_address, ds_street, ds_number, ds_neighborhood, ds_city, ds_state, id_user) 
VALUES (10, 'Chestnut Street', 1010, 'North Side', 'San Francisco', 'CA', 10);


--T_TZ_ADDITIONAL_DATA
INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (1, '1990-01-15', '123.456.789-01', '(11) 98765-4321', 1);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (2, '1985-05-20', '234.567.890-12', '(21) 91234-5678', 2);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (3, '1992-09-10', '345.678.901-23', '(31) 99876-5432', 3);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (4, '1995-12-25', '456.789.012-34', '(41) 98765-6789', 4);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (5, '1988-07-04', '567.890.123-45', '(51) 91234-0987', 5);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (6, '1993-03-18', '678.901.234-56', '(61) 99999-1111', 6);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (7, '1987-11-30', '789.012.345-67', '(71) 98888-2222', 7);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (8, '1994-06-15', '890.123.456-78', '(81) 97777-3333', 8);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (9, '1991-08-22', '901.234.567-89', '(91) 96666-4444', 9);

INSERT INTO T_TZ_ADDITIONAL_DATA (id_additional_data, dt_birth_date, ds_cpf, ds_telephone, id_user) 
VALUES (10, '1989-02-28', '012.345.678-90', '(31) 95555-5555', 10);


--T_TZ_SOLAR_PANEL_TYPE
INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (1, 12.5, 'SP-100', 'SolarTech', 'Monocristalino', 0.50, 25);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (2, 24.0, 'XP-200', 'GreenSun', 'Policristalino', 0.45, 20);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (3, 48.0, 'Eco-300', 'EcoPower', 'Filme Fino', 0.40, 15);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (4, 36.0, 'ProMax-400', 'SunVolt', 'Monocristalino', 0.55, 30);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (5, 18.0, 'LiteSolar-150', 'PhotonWorks', 'Policristalino', 0.48, 20);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (6, 60.0, 'Hyper-500', 'HelioEnergy', 'Monocristalino', 0.60, 35);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (7, 30.0, 'SolarPlus-250', 'SunWorks', 'Filme Fino', 0.42, 10);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (8, 42.0, 'EnergyFlex-300', 'PowerGen', 'Monocristalino', 0.50, 25);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (9, 15.0, 'Compact-100', 'GreenTech', 'Policristalino', 0.38, 10);

INSERT INTO T_TZ_SOLAR_PANEL_TYPE (id_solar_plate_type, ds_voltage, ds_model, ds_manufacturer, ds_cell_type, vl_cost_per_watt, nr_product_warranty) 
VALUES (10, 50.0, 'PowerLite-400', 'BrightFuture', 'Monocristalino', 0.58, 28);


--T_TZ_SOLAR_PANEL
INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (1, 1.6, 120.00, 'Alumínio e Vidro', 1);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (2, 2.0, 200.00, 'Plástico e Vidro', 2);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (3, 1.8, 150.00, 'Alumínio e Policarbonato', 3);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (4, 2.5, 250.00, 'Aço e Vidro', 4);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (5, 1.4, 100.00, 'Fibra de Vidro', 5);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (6, 2.8, 300.00, 'Alumínio e Vidro', 6);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (7, 1.7, 180.00, 'Plástico e Vidro', 7);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (8, 2.2, 220.00, 'Alumínio e Policarbonato', 8);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (9, 1.9, 190.00, 'Aço e Vidro', 9);

INSERT INTO T_TZ_SOLAR_PANEL (id_solar_board, vl_siza, vl_price, ds_material, id_solar_plate_type) 
VALUES (10, 3.0, 350.00, 'Fibra de Vidro', 10);


--T_TZ_WIND_TURBINE_TYPE
INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (1, 12.0, 'TG-100', 'TecnoVento', 'Sincrono', 20);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (2, 24.0, 'EcoVento-200', 'EnergiaVerde', 'Assíncrono', 15);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (3, 48.0, 'PowerSpin-300', 'TurbinasBR', 'Ímã Permanente', 25);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (4, 30.0, 'AeroMax-400', 'VentoHelio', 'Sincrono', 18);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (5, 60.0, 'Tornado-500', 'FuturoTurbinas', 'Drive Direto', 30);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (6, 36.0, 'FlexVento-150', 'EcoSistemas', 'Assíncrono', 12);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (7, 50.0, 'TurboPower-600', 'TrabalhosVento', 'Ímã Permanente', 28);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (8, 40.0, 'CéuLâmina-350', 'EnergiaCéu', 'Drive Direto', 22);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (9, 20.0, 'BrisaLeve-120', 'TecnoBrisa', 'Sincrono', 10);

INSERT INTO T_TZ_WIND_TURBINE_TYPE (id_type_turbine, ds_voltage, ds_model, ds_manufacturer, ds_generator_type, nr_warranty_years) 
VALUES (10, 72.0, 'MegaVento-700', 'GigaTurbinas', 'Assíncrono', 35);


--T_TZ_WIND_TURBINE
INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (1, 5.5, 10000.00, 'Aço e Fibra de Vidro', 1);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (2, 7.2, 15000.00, 'Alumínio e Policarbonato', 2);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (3, 6.8, 13000.00, 'Fibra de Carbono', 3);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (4, 8.0, 20000.00, 'Aço Inoxidável', 4);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (5, 5.0, 9000.00, 'Policarbonato e Aço', 5);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (6, 9.5, 25000.00, 'Alumínio e Fibra de Vidro', 6);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (7, 6.0, 12000.00, 'Aço Galvanizado', 7);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (8, 7.5, 18000.00, 'Fibra de Carbono e Vidro', 8);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (9, 6.3, 11000.00, 'Plástico Reforçado', 9);

INSERT INTO T_TZ_WIND_TURBINE (id_turbine_wind, vl_size, vl_price, ds_material, id_type_turbine) 
VALUES (10, 10.0, 30000.00, 'Aço e Alumínio', 10);


--T_TZ_CONTRACTED_PLAN
INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (1, 1, 2, 5);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (2, 2, 4, 3);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (3, 3, 1, 7);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (4, 4, 5, 8);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (5, 5, 6, 2);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (6, 6, 3, 4);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (7, 7, 8, 9);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (8, 8, 7, 1);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (9, 9, 10, 6);

INSERT INTO T_TZ_CONTRACTED_PLAN (id_contracted_plan, id_user, id_solar_board, id_turbine_wind) 
VALUES (10, 10, 9, 10);