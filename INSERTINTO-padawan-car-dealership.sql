INSERT INTO salesperson(
    first_name,
    last_name
) VALUES (
    'Greg',
    'Fantasy'
),
(
    'Mia',
    'Emblem'
);

INSERT INTO mechanic(
    first_name,
    last_name
) VALUES (
    'Bob',
    'Ru'
),
(
    'Bob',
    'Builder'
);

INSERT INTO customer(
    first_name,
    last_name,
    drivers_license_number,
    credit_score
) VALUES (
    'Anti',
    'Karen',
    'K2716',
    300
),
(
    'Barbie',
    'Movie',
    'K1927',
    645
);

INSERT INTO car(
    year,
    make,
    model,
    color,
    price,
    type
) VALUES (
    2016,
    'Kia',
    'Soul',
    'Yellow',
    16995.00,
    'SUV'
), (
    2015,
    'Honda',
    'Fit',
    'White',
    13500.00,
    '5dr'
), (
    2023,
    'Ferrari',
    'Spyder',
    'Red',
    90000.00,
    'Con'
)

INSERT INTO service_history(
    car_id,
    customer_id
) VALUES (
    1,
    5
), (
    2,
    6
)

INSERT INTO service_ticket(
    service_history_id,
    price,
    service,
    service_date
) VALUES (
    7,
    250.00,
    '5,000 Mile Checkup',
    '20120618 10:34:09 AM'
), (
    8,
    50.00,
    'Change flat tire',
    '20140611 1:54:33 PM'
)

INSERT INTO service_ticket_mechanic(
    service_ticket_id,
    mechanic_id 
) VALUES (
    3,
    5
), (
    4,
    6
)

INSERT INTO invoice(
    salesperson_id,
    customer_id,
    car_id,
    sale_date,
    total_price
) VALUES (
    5,
    5,
    1,
    '12-mar-2016',
    17500.00

), (
    6,
    6,
    2,
    '15-Apr-2017',
    15000
)
