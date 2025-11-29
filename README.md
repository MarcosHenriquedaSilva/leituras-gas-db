# Projeto: Leituras de Gás – Banco de Dados Relacional

Este repositório contém o banco de dados do sistema **Leituras de Gás**, desenvolvido para registrar e organizar as leituras de consumo de gás em unidades residenciais.

## 🧩 Objetivo do Banco de Dados
O banco foi projetado para:
- Armazenar unidades residenciais
- Registrar moradores
- Registrar leituras mensais de gás
- Permitir rastreamento de quem registrou cada leitura

## 🗂️ Estrutura
O banco contém as seguintes tabelas:

- `unidades` – Cadastro das unidades residenciais
- `moradores` – Moradores associados a uma unidade
- `leituras_gas` – Leituras de gás registradas periodicamente

O script de criação está no arquivo **database.sql**.

## 🛠️ Tecnologias Utilizadas
- PostgreSQL

## 📦 Como executar

No PostgreSQL:

```sql
\i database.sql
