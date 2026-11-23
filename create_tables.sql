CREATE TABLE senders (
    sender_id SERIAL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    address TEXT NOT NULL,
    passport VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL
);
CREATE TABLE correspondence (
    track_number VARCHAR(20) PRIMARY KEY,
    type_id INT NOT NULL,
    weight NUMERIC(8,2) NOT NULL,
    length_cm NUMERIC(6,1) NOT NULL,
    width_cm NUMERIC(6,1) NOT NULL,
    height_cm NUMERIC(6,1) NOT NULL,
    sender_id INT NOT NULL,
    stamps_sum NUMERIC(8,2) NOT NULL,
    FOREIGN KEY (sender_id) REFERENCES senders(sender_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);