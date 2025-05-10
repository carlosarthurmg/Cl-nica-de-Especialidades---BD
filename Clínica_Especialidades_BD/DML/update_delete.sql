-- Atualizações realistas (UPDATE)
UPDATE pacientes SET telefone = '99999-1234' WHERE paciente_id = 1;
UPDATE pacientes SET email = 'bruno.novo@gmail.com' WHERE paciente_id = 2;
UPDATE consultas SET status = 'Realizada' WHERE consulta_id = 4; -- consulta que estava agendada
UPDATE consultas SET status = 'Cancelada' WHERE consulta_id = 6;
UPDATE medicos SET telefone = '98888-1112' WHERE medico_id = 1;

-- Excluir dados isolados (DELETE)
-- Exemplo: consulta cancelada e sem receita ou pagamento
DELETE FROM consultas WHERE consulta_id = 3;
-- Excluir paciente sem consultas
DELETE FROM pacientes WHERE paciente_id = 10;
