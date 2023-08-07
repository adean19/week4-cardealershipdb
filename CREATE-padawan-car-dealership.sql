CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
);
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
);
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    year INTEGER,
    make VARCHAR(25),
    model VARCHAR(25),
    color VARCHAR(25),
    price NUMERIC(8, 2),
    type VARCHAR(4)
);
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    drivers_license_number VARCHAR(25),
    credit_score INTEGER
);
CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car(car_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_history_id INTEGER NOT NULL,
    price NUMERIC(8, 2),
    service VARCHAR(50),
    service_date TIMESTAMP,
    FOREIGN KEY(service_history_id) REFERENCES service_history(service_history_id)
);

CREATE TABLE service_ticket_mechanic(
    service_ticket_mechanic_id SERIAL PRIMARY KEY,
    service_ticket_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,
    FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id),
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    sale_date TIMESTAMP,
    total_price NUMERIC(8,2),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(car_id) REFERENCES car(car_id)
);