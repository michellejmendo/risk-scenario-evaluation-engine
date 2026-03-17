-- Scenario Risk Coverage Score

SELECT 
    s.scenario_name,
    s.inherent_risk_score,
    AVG(m.control_effectiveness) AS avg_control_effectiveness,
    (s.inherent_risk_score - AVG(m.control_effectiveness)) AS residual_risk
FROM scenarios s
JOIN scenario_control_mapping m
    ON s.scenario_id = m.scenario_id
GROUP BY s.scenario_name, s.inherent_risk_score
ORDER BY residual_risk DESC;
