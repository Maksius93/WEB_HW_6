SELECT gr.name, sbj.name, g.grade, g.date_of
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN groups gr ON gr.id = s.group_id
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE gr.id = 3 AND sbj.id = 4 AND g.date_of = (SELECT MAX(g.date_of) FROM grades g LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN groups gr ON gr.id = s.group_id
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE gr.id = 3 AND sbj.id = 4);