-- Identify scenarios with weak control coverage
SELECT s.scenario_name,
       AVG(sc.effectiveness_rating) as avg_control_strength
FROM scenarios s
JOIN scenario_control_mapping sc
    ON s.scenario_id = sc.scenario_id
GROUP BY s.scenario_name
HAVING AVG(sc.effectiveness_rating) < 3;
