CREATE TABLE IF NOT EXISTS pojazdy_aktualne (
    vehicle_number VARCHAR(20) PRIMARY KEY,
    lines VARCHAR(10),
    brigade VARCHAR(10),
    lat DOUBLE PRECISION,
    lon DOUBLE PRECISION,
    vehicle_type VARCHAR(10),
    time_ztm TIMESTAMP,
    last_update TIMESTAMP
);

CREATE TABLE IF NOT EXISTS pozycje_historia (
    id SERIAL PRIMARY KEY,
    vehicle_number VARCHAR(20),
    lines VARCHAR(10),
    lat DOUBLE PRECISION,
    lon DOUBLE PRECISION,
    vehicle_type VARCHAR(10),
    time_ztm TIMESTAMP,
    ingestion_time TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_historia_vehicle_time
    ON pozycje_historia (vehicle_number, time_ztm);
