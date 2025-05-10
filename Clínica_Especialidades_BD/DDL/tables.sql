-- Criação das tabelas para Clínica de Especialidades

-- Tabela PACIENTES
CREATE TABLE pacientes (
    paciente_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    data_cadastro DATE DEFAULT CURRENT_DATE
);

-- Tabela MÉDICOS
CREATE TABLE medicos (
    medico_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    especialidade_id INT NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (especialidade_id) REFERENCES especialidades(especialidade_id)
);

-- Tabela ESPECIALIDADES
CREATE TABLE especialidades (
    especialidade_id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE,
    descricao VARCHAR(255)
);

-- Tabela CONSULTAS
CREATE TABLE consultas (
    consulta_id INT PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    status VARCHAR(20) DEFAULT 'Agendada' CHECK (status IN ('Agendada', 'Realizada', 'Cancelada')),
    FOREIGN KEY (paciente_id) REFERENCES pacientes(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES medicos(medico_id)
);

-- Tabela RECEITAS
CREATE TABLE receitas (
    receita_id INT PRIMARY KEY,
    consulta_id INT NOT NULL UNIQUE,
    descricao TEXT NOT NULL,
    data_emissao DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (consulta_id) REFERENCES consultas(consulta_id)
);

-- Tabela PAGAMENTOS
CREATE TABLE pagamentos (
    pagamento_id INT PRIMARY KEY,
    consulta_id INT NOT NULL UNIQUE,
    valor DECIMAL(10,2) NOT NULL CHECK (valor >= 0),
    forma_pagamento VARCHAR(20) NOT NULL CHECK (forma_pagamento IN ('Dinheiro', 'Cartão', 'PIX')),
    data_pagamento DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (consulta_id) REFERENCES consultas(consulta_id)
);
