CREATE TABLE scenarios (
    scenario_id INTEGER PRIMARY KEY,
    scenario_name TEXT,
    scenario_type TEXT
);

CREATE TABLE scenario_control_mapping (
    id INTEGER PRIMARY KEY,
    scenario_id INTEGER,
    control_id INTEGER,
    effectiveness_rating INTEGER CHECK(effectiveness_rating BETWEEN 1 AND 5)
);
