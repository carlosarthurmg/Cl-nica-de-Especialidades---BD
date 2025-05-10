-- 1. WHERE e operadores lógicos
SELECT * FROM pacientes WHERE sexo = 'F' AND data_nascimento > '1990-01-01';

-- 2. WHERE com OR e NOT
SELECT * FROM consultas WHERE status = 'Agendada' OR status = 'Cancelada';

-- 3. Comparativos
SELECT * FROM pagamentos WHERE valor > 200.00;

-- 4. LIKE
SELECT * FROM pacientes WHERE nome LIKE 'A%';

-- 5. IN
SELECT * FROM medicos WHERE especialidade_id IN (1, 2, 3);

-- 6. JOIN entre pacientes e consultas
SELECT p.nome, c.data_hora, c.status
FROM pacientes p
JOIN consultas c ON p.paciente_id = c.paciente_id;

-- 7. JOIN entre consultas, médicos e especialidades
SELECT c.consulta_id, m.nome AS medico, e.nome AS especialidade, c.data_hora
FROM consultas c
JOIN medicos m ON c.medico_id = m.medico_id
JOIN especialidades e ON m.especialidade_id = e.especialidade_id;

-- 8. GROUP BY e HAVING
SELECT e.nome AS especialidade, COUNT(*) AS total_consultas
FROM consultas c
JOIN medicos m ON c.medico_id = m.medico_id
JOIN especialidades e ON m.especialidade_id = e.especialidade_id
GROUP BY e.nome
HAVING COUNT(*) > 1;

-- 9. ORDER BY
SELECT * FROM consultas ORDER BY data_hora DESC;

-- 10. Funções agregadas
SELECT COUNT(*) AS total_pacientes, AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, data_nascimento))) AS idade_media
FROM pacientes;
