# Clínica de Especialidades — Banco de Dados

Este projeto foi desenvolvido como parte do trabalho para a disciplina de Banco de Dados no curso de Engenharia de Software.

## 📚 Cenário escolhido

**Cenário C — Clínica de Especialidades**

Sistema para gerenciamento de pacientes, médicos, especialidades, consultas, receitas e pagamentos.

---


---

## 🔧 Scripts incluídos

✅ Criação de tabelas (`CREATE TABLE`) com chaves primárias/estrangeiras, NOT NULL, UNIQUE, CHECK, DEFAULT.  
✅ População inicial (`INSERT`) com 10 registros por tabela.  
✅ Operações de manipulação (`UPDATE`, `DELETE`).  
✅ Consultas SQL (`SELECT`) com WHERE, JOIN, GROUP BY, HAVING, ORDER BY, funções agregadas.

---

## 💾 Como rodar

1. Execute `create_tables.sql` para criar as tabelas.
2. Execute `insert.sql` para popular o banco.
3. Execute `update_delete.sql` para aplicar atualizações e exclusões.
4. Execute `select_queries.sql` para testar consultas.

---

# Documento Explicativo

## 📚 Cenário escolhido

Projeto modelando uma clínica de especialidades médicas, com controle de:
- Pacientes
- Médicos
- Especialidades
- Consultas
- Receitas
- Pagamentos

---

## 📦 Modelo Relacional

**Entidades e relacionamentos principais:**

- pacientes (paciente_id PK, nome, cpf, data_nascimento, telefone, email, sexo, data_cadastro)
- medicos (medico_id PK, nome, crm, especialidade_id FK, telefone, email)
- especialidades (especialidade_id PK, nome, descricao)
- consultas (consulta_id PK, paciente_id FK, medico_id FK, data_hora, status)
- receitas (receita_id PK, consulta_id FK UNIQUE, descricao, data_emissao)
- pagamentos (pagamento_id PK, consulta_id FK UNIQUE, valor, forma_pagamento, data_pagamento)

---

## 🔑 Justificativas de modelagem

- **Chaves primárias** garantem unicidade.
- **Chaves estrangeiras** conectam entidades corretamente.
- **NOT NULL, UNIQUE, CHECK, DEFAULT** asseguram integridade e consistência.
- **ALTER TABLE** demonstra evolução no modelo.

---

## 🖥️ Exemplos de resultados (simulados)

**Exemplo 1 — Pacientes e consultas (JOIN):**

| nome         | data_hora         | status     |
|--------------|-------------------|------------|
| Ana Silva   | 2025-05-01 10:00  | Realizada |
| Bruno Costa | 2025-05-02 11:00  | Realizada |

**Exemplo 2 — Agrupamento por especialidade:**

| especialidade  | total_consultas |
|---------------|-----------------|
| Cardiologia  | 2               |
| Pediatria    | 1               |

---

## ✨ Autor

Carlos Arthur Moraes Gonçalves
Centro Universitário Santo Agostinho — Engenharia de Software
  
