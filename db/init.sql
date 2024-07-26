CREATE DATABASE IF NOT EXISTS cars_db;

USE cars_db;

CREATE TABLE IF NOT EXISTS cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL
);

INSERT INTO cars (make, model, year) VALUES ('Toyota', 'Corolla', 2020);
INSERT INTO cars (make, model, year) VALUES ('Honda', 'Civic', 2019);
INSERT INTO cars (make, model, year) VALUES ('Ford', 'Mustang', 2021);
INSERT INTO cars (make, model, year) VALUES ('Chevrolet', 'Camaro', 2022);
INSERT INTO cars (make, model, year) VALUES ('Nissan', 'Altima', 2018);
INSERT INTO cars (make, model, year) VALUES ('BMW', 'X5', 2020);
INSERT INTO cars (make, model, year) VALUES ('Mercedes-Benz', 'C-Class', 2019);
INSERT INTO cars (make, model, year) VALUES ('Audi', 'A4', 2021);
INSERT INTO cars (make, model, year) VALUES ('Volkswagen', 'Golf', 2022);
INSERT INTO cars (make, model, year) VALUES ('Hyundai', 'Elantra', 2017);
INSERT INTO cars (make, model, year) VALUES ('Kia', 'Sorento', 2020);
INSERT INTO cars (make, model, year) VALUES ('Subaru', 'Outback', 2019);
INSERT INTO cars (make, model, year) VALUES ('Mazda', 'CX-5', 2021);
INSERT INTO cars (make, model, year) VALUES ('Lexus', 'RX', 2022);
INSERT INTO cars (make, model, year) VALUES ('Volvo', 'XC90', 2018);
INSERT INTO cars (make, model, year) VALUES ('Tesla', 'Model 3', 2020);
INSERT INTO cars (make, model, year) VALUES ('Porsche', '911', 2019);
INSERT INTO cars (make, model, year) VALUES ('Jaguar', 'F-Type', 2021);
INSERT INTO cars (make, model, year) VALUES ('Land Rover', 'Range Rover', 2022);
INSERT INTO cars (make, model, year) VALUES ('Ferrari', '488 GTB', 2017);
INSERT INTO cars (make, model, year) VALUES ('Lamborghini', 'Huracan', 2020);
INSERT INTO cars (make, model, year) VALUES ('McLaren', '720S', 2019);
INSERT INTO cars (make, model, year) VALUES ('Bugatti', 'Chiron', 2021);
INSERT INTO cars (make, model, year) VALUES ('Rolls-Royce', 'Phantom', 2022);
INSERT INTO cars (make, model, year) VALUES ('Acura', 'MDX', 2020);
INSERT INTO cars (make, model, year) VALUES ('Alfa Romeo', 'Giulia', 2019);
INSERT INTO cars (make, model, year) VALUES ('Bentley', 'Continental GT', 2021);
INSERT INTO cars (make, model, year) VALUES ('Cadillac', 'Escalade', 2022);
INSERT INTO cars (make, model, year) VALUES ('Chrysler', '300', 2018);
INSERT INTO cars (make, model, year) VALUES ('Dodge', 'Challenger', 2020);
INSERT INTO cars (make, model, year) VALUES ('Fiat', '500', 2019);
INSERT INTO cars (make, model, year) VALUES ('GMC', 'Sierra', 2021);
INSERT INTO cars (make, model, year) VALUES ('Infiniti', 'Q50', 2022);
INSERT INTO cars (make, model, year) VALUES ('Jeep', 'Wrangler', 2017);
INSERT INTO cars (make, model, year) VALUES ('Lincoln', 'Navigator', 2020);
INSERT INTO cars (make, model, year) VALUES ('Maserati', 'Ghibli', 2019);
INSERT INTO cars (make, model, year) VALUES ('Mini', 'Cooper', 2021);
INSERT INTO cars (make, model, year) VALUES ('Mitsubishi', 'Outlander', 2022);
INSERT INTO cars (make, model, year) VALUES ('Porsche', 'Panamera', 2018);
INSERT INTO cars (make, model, year) VALUES ('Ram', '1500', 2020);
INSERT INTO cars (make, model, year) VALUES ('Smart', 'Fortwo', 2019);
INSERT INTO cars (make, model, year) VALUES ('Toyota', 'Camry', 2021);
INSERT INTO cars (make, model, year) VALUES ('Volkswagen', 'Tiguan', 2022);
INSERT INTO cars (make, model, year) VALUES ('Volvo', 'S60', 2017);
INSERT INTO cars (make, model, year) VALUES ('Audi', 'Q5', 2020);
INSERT INTO cars (make, model, year) VALUES ('BMW', '3 Series', 2019);
INSERT INTO cars (make, model, year) VALUES ('Chevrolet', 'Equinox', 2021);
INSERT INTO cars (make, model, year) VALUES ('Ford', 'Escape', 2022);
INSERT INTO cars (make, model, year) VALUES ('Honda', 'Accord', 2018);
INSERT INTO cars (make, model, year) VALUES ('Hyundai', 'Tucson', 2020);
INSERT INTO cars (make, model, year) VALUES ('Jaguar', 'XE', 2019);
INSERT INTO cars (make, model, year) VALUES ('Kia', 'Optima', 2021);
INSERT INTO cars (make, model, year) VALUES ('Lexus', 'ES', 2022);
INSERT INTO cars (make, model, year) VALUES ('Mazda', 'Mazda3', 2017);
INSERT INTO cars (make, model, year) VALUES ('Mercedes-Benz', 'GLC', 2020);
INSERT INTO cars (make, model, year) VALUES ('Nissan', 'Rogue', 2019);
INSERT INTO cars (make, model, year) VALUES ('Subaru', 'Forester', 2021);
INSERT INTO cars (make, model, year) VALUES ('Tesla', 'Model S', 2022);
INSERT INTO cars (make, model, year) VALUES ('Toyota', 'Highlander', 2018);
INSERT INTO cars (make, model, year) VALUES ('Volkswagen', 'Passat', 2020);
INSERT INTO cars (make, model, year) VALUES ('Volvo', 'XC60', 2019);
INSERT INTO cars (make, model, year) VALUES ('Audi', 'Q7', 2021);
INSERT INTO cars (make, model, year) VALUES ('BMW', '5 Series', 2022);
INSERT INTO cars (make, model, year) VALUES ('Chevrolet', 'Traverse', 2017);
INSERT INTO cars (make, model, year) VALUES ('Ford', 'Explorer', 2020);
INSERT INTO cars (make, model, year) VALUES ('Honda', 'Pilot', 2019);
INSERT INTO cars (make, model, year) VALUES ('Hyundai', 'Santa Fe', 2021);
INSERT INTO cars (make, model, year) VALUES ('Jaguar', 'F-Pace', 2022);
INSERT INTO cars (make, model, year) VALUES ('Kia', 'Sportage', 2018);
INSERT INTO cars (make, model, year) VALUES ('Lexus', 'NX', 2020);
INSERT INTO cars (make, model, year) VALUES ('Mazda', 'CX-9', 2019);
INSERT INTO cars (make, model, year) VALUES ('Mercedes-Benz', 'GLE', 2021);
INSERT INTO cars (make, model, year) VALUES ('Nissan', 'Murano', 2022);
INSERT INTO cars (make, model, year) VALUES ('Subaru', 'Crosstrek', 2017);
INSERT INTO cars (make, model, year) VALUES ('Tesla', 'Model X', 2020);
INSERT INTO cars (make, model, year) VALUES ('Toyota', 'Rav4', 2019);
INSERT INTO cars (make, model, year) VALUES ('Volkswagen', 'Atlas', 2021);
INSERT INTO cars (make, model, year) VALUES ('Volvo', 'V90', 2022);