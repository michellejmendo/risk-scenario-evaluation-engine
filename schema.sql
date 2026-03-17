-- Risk Scenario Evaluation Engine
-- Governance-grade control effectiveness modeling

CREATE TABLE scenarios (
    scenario_id INTEGER PRIMARY KEY,
    scenario_name TEXT NOT NULL,
    scenario_category TEXT NOT NULL,
    inherent_risk_score INTEGER CHECK(inherent_risk_score BETWEEN 1 AND 25)
);

CREATE TABLE controls (
    control_id INTEGER PRIMARY KEY,
    control_name TEXT NOT NULL,
    control_framework TEXT NOT NULL
);

CREATE TABLE scenario_control_mapping (
    mapping_id INTEGER PRIMARY KEY,
    scenario_id INTEGER,
    control_id INTEGER,
    control_effectiveness INTEGER CHECK(control_effectiveness BETWEEN 1 AND 5),
    FOREIGN KEY (scenario_id) REFERENCES scenarios(scenario_id),
    FOREIGN KEY (control_id) REFERENCES controls(control_id)
);
