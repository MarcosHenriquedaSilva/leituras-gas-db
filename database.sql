
CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    company_id INTEGER REFERENCES companies(company_id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE units (
    unit_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    company_id INTEGER REFERENCES companies(company_id),
    address VARCHAR(255) NOT NULL,
    meter_number VARCHAR(100) UNIQUE,     
    status VARCHAR(20) NOT NULL DEFAULT 'active',  
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE readings (
    reading_id SERIAL PRIMARY KEY,
    unit_id INTEGER NOT NULL REFERENCES units(unit_id) ON DELETE CASCADE,
    value NUMERIC(10,2) NOT NULL,
    reading_date DATE NOT NULL,
    recorded_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    note TEXT   
);



