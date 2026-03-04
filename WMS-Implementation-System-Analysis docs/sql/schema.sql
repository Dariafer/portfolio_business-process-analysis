sql schema

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    unit VARCHAR(20) NOT NULL
);

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    zone VARCHAR(50) NOT NULL,
    cell_code VARCHAR(50) NOT NULL,
    UNIQUE(zone, cell_code)
);

CREATE TABLE stock_balance (
    product_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    quantity DECIMAL(12,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (product_id, location_id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (location_id) REFERENCES locations(id)
);

CREATE TABLE movement_requests (
    id SERIAL PRIMARY KEY,
    request_id VARCHAR(50) NOT NULL UNIQUE,
    status VARCHAR(30) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE movement_request_lines (
    id SERIAL PRIMARY KEY,
    movement_request_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    from_location_id INTEGER NOT NULL,
    to_location_id INTEGER NOT NULL,
    quantity DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (movement_request_id) REFERENCES movement_requests(id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (from_location_id) REFERENCES locations(id),
    FOREIGN KEY (to_location_id) REFERENCES locations(id)
);

CREATE TABLE event_log (
    id SERIAL PRIMARY KEY,
    movement_request_id INTEGER NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    event_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_id INTEGER,
    FOREIGN KEY (movement_request_id) REFERENCES movement_requests(id)
);
