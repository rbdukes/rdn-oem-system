CREATE TYPE oem_status AS ENUM ('VERIFIED', 'DISTRIBUTOR', 'ACQUIRED', 'DEFUNCT', 'UNVERIFIED');
CREATE TYPE equipment_vertical AS ENUM ('DRILLING', 'MUD_PUMPS', 'TUBULARS', 'BOP', 'TOP_DRIVE', 'POWER_GEN', 'OFFSHORE');

CREATE TABLE master_oem_registry (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    company_name TEXT NOT NULL,
    legal_name TEXT,
    website TEXT,
    hq_country TEXT,
    hq_region TEXT,
    categories equipment_vertical[],
    oem_status oem_status DEFAULT 'UNVERIFIED',
    is_public BOOLEAN DEFAULT FALSE,
    reliability_score INT DEFAULT 50,
    created_at TIMESTAMP DEFAULT NOW()
);
