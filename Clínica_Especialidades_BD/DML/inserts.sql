-- Inserindo especialidades
INSERT INTO especialidades VALUES (1, 'Cardiologia', 'Problemas do coração');
INSERT INTO especialidades VALUES (2, 'Dermatologia', 'Doenças de pele');
INSERT INTO especialidades VALUES (3, 'Ortopedia', 'Problemas ósseos');
INSERT INTO especialidades VALUES (4, 'Pediatria', 'Cuidados infantis');
INSERT INTO especialidades VALUES (5, 'Oftalmologia', 'Saúde ocular');
INSERT INTO especialidades VALUES (6, 'Neurologia', 'Sistema nervoso');
INSERT INTO especialidades VALUES (7, 'Psiquiatria', 'Saúde mental');
INSERT INTO especialidades VALUES (8, 'Ginecologia', 'Saúde feminina');
INSERT INTO especialidades VALUES (9, 'Endocrinologia', 'Hormônios e metabolismo');
INSERT INTO especialidades VALUES (10, 'Urologia', 'Sistema urinário');

-- Inserindo pacientes
INSERT INTO pacientes VALUES (1, 'Ana Silva', '12345678901', '1990-05-15', '99999-1111', 'ana@gmail.com', 'F', CURRENT_DATE);
INSERT INTO pacientes VALUES (2, 'Bruno Costa', '12345678902', '1985-07-20', '99999-2222', 'bruno@gmail.com', 'M', CURRENT_DATE);
INSERT INTO pacientes VALUES (3, 'Carla Mendes', '12345678903', '2000-12-10', '99999-3333', 'carla@gmail.com', 'F', CURRENT_DATE);
INSERT INTO pacientes VALUES (4, 'Diego Santos', '12345678904', '1975-03-30', '99999-4444', 'diego@gmail.com', 'M', CURRENT_DATE);
INSERT INTO pacientes VALUES (5, 'Eduarda Lima', '12345678905', '1995-09-25', '99999-5555', 'eduarda@gmail.com', 'F', CURRENT_DATE);
INSERT INTO pacientes VALUES (6, 'Felipe Rocha', '12345678906', '1988-11-12', '99999-6666', 'felipe@gmail.com', 'M', CURRENT_DATE);
INSERT INTO pacientes VALUES (7, 'Gisele Martins', '12345678907', '1993-02-18', '99999-7777', 'gisele@gmail.com', 'F', CURRENT_DATE);
INSERT INTO pacientes VALUES (8, 'Henrique Alves', '12345678908', '1980-06-05', '99999-8888', 'henrique@gmail.com', 'M', CURRENT_DATE);
INSERT INTO pacientes VALUES (9, 'Isabela Souza', '12345678909', '2002-04-22', '99999-9999', 'isabela@gmail.com', 'F', CURRENT_DATE);
INSERT INTO pacientes VALUES (10, 'João Pedro', '12345678910', '1997-08-14', '99999-0000', 'joao@gmail.com', 'M', CURRENT_DATE);

-- Inserindo médicos
INSERT INTO medicos VALUES (1, 'Dr. Luiz Cardoso', 'CRM1234', 1, '98888-1111', 'luiz@gmail.com');
INSERT INTO medicos VALUES (2, 'Dra. Maria Rosa', 'CRM1235', 2, '98888-2222', 'maria@gmail.com');
INSERT INTO medicos VALUES (3, 'Dr. Pedro Lopes', 'CRM1236', 3, '98888-3333', 'pedro@gmail.com');
INSERT INTO medicos VALUES (4, 'Dra. Ana Paula', 'CRM1237', 4, '98888-4444', 'anapaula@gmail.com');
INSERT INTO medicos VALUES (5, 'Dr. Carlos Lima', 'CRM1238', 5, '98888-5555', 'carlos@gmail.com');
INSERT INTO medicos VALUES (6, 'Dr. Eduardo Farias', 'CRM1239', 6, '98888-6666', 'eduardo@gmail.com');
INSERT INTO medicos VALUES (7, 'Dra. Fernanda Castro', 'CRM1240', 7, '98888-7777', 'fernanda@gmail.com');
INSERT INTO medicos VALUES (8, 'Dra. Bianca Torres', 'CRM1241', 8, '98888-8888', 'bianca@gmail.com');
INSERT INTO medicos VALUES (9, 'Dr. Gustavo Moreira', 'CRM1242', 9, '98888-9999', 'gustavo@gmail.com');
INSERT INTO medicos VALUES (10, 'Dr. Ricardo Neves', 'CRM1243', 10, '98888-0000', 'ricardo@gmail.com');

-- Inserindo consultas
INSERT INTO consultas VALUES (1, 1, 1, '2025-05-01 10:00', 'Realizada');
INSERT INTO consultas VALUES (2, 2, 2, '2025-05-02 11:00', 'Realizada');
INSERT INTO consultas VALUES (3, 3, 3, '2025-05-03 09:00', 'Cancelada');
INSERT INTO consultas VALUES (4, 4, 4, '2025-05-04 14:00', 'Agendada');
INSERT INTO consultas VALUES (5, 5, 5, '2025-05-05 15:00', 'Realizada');
INSERT INTO consultas VALUES (6, 6, 6, '2025-05-06 16:00', 'Agendada');
INSERT INTO consultas VALUES (7, 7, 7, '2025-05-07 10:30', 'Realizada');
INSERT INTO consultas VALUES (8, 8, 8, '2025-05-08 13:00', 'Agendada');
INSERT INTO consultas VALUES (9, 9, 9, '2025-05-09 17:00', 'Realizada');
INSERT INTO consultas VALUES (10, 10, 10, '2025-05-10 12:00', 'Agendada');

-- Inserindo receitas
INSERT INTO receitas VALUES (1, 1, 'Tomar remédio X por 10 dias.', CURRENT_DATE);
INSERT INTO receitas VALUES (2, 2, 'Aplicar pomada Y duas vezes ao dia.', CURRENT_DATE);
INSERT INTO receitas VALUES (3, 3, 'Repouso absoluto por 7 dias.', CURRENT_DATE);
INSERT INTO receitas VALUES (4, 5, 'Uso de óculos para leitura.', CURRENT_DATE);
INSERT INTO receitas VALUES (5, 7, 'Tomar antidepressivo Z por 30 dias.', CURRENT_DATE);
INSERT INTO receitas VALUES (6, 9, 'Dieta balanceada e exercício físico.', CURRENT_DATE);
INSERT INTO receitas VALUES (7, 4, 'Vitaminas A e D.', CURRENT_DATE);
INSERT INTO receitas VALUES (8, 6, 'Medicamento para dor de cabeça.', CURRENT_DATE);
INSERT INTO receitas VALUES (9, 8, 'Pomada anti-inflamatória.', CURRENT_DATE);
INSERT INTO receitas VALUES (10, 10, 'Controle de glicemia.', CURRENT_DATE);

-- Inserindo pagamentos
INSERT INTO pagamentos VALUES (1, 1, 200.00, 'Cartão', CURRENT_DATE);
INSERT INTO pagamentos VALUES (2, 2, 150.00, 'Dinheiro', CURRENT_DATE);
INSERT INTO pagamentos VALUES (3, 3, 0.00, 'Dinheiro', CURRENT_DATE);  -- Consulta cancelada
INSERT INTO pagamentos VALUES (4, 5, 300.00, 'PIX', CURRENT_DATE);
INSERT INTO pagamentos VALUES (5, 7, 250.00, 'Cartão', CURRENT_DATE);
INSERT INTO pagamentos VALUES (6, 9, 180.00, 'Dinheiro', CURRENT_DATE);
INSERT INTO pagamentos VALUES (7, 4, 100.00, 'PIX', CURRENT_DATE);
INSERT INTO pagamentos VALUES (8, 6, 220.00, 'Cartão', CURRENT_DATE);
INSERT INTO pagamentos VALUES (9, 8, 270.00, 'PIX', CURRENT_DATE);
INSERT INTO pagamentos VALUES (10, 10, 190.00, 'Cartão', CURRENT_DATE);
