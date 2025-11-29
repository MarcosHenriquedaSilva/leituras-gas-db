📘 Banco de Dados — Projeto Leituras de Gás

Este repositório contém o banco de dados relacional utilizado no projeto Leituras de Gás, desenvolvido para registrar e organizar leituras de consumo de gás realizadas em unidades consumidoras.

🗄️ Sobre o Projeto

O objetivo do banco de dados é:

Armazenar informações de usuários, empresas, unidades consumidoras e leituras.

Garantir integridade e organização dos dados.

Servir como base para um sistema futuro (backend + frontend).

Toda a modelagem está alinhada com o trabalho da disciplina Experiência Profissional: Banco de Dados Relacional.

📂 Arquivo Principal
📄 database.sql

Este arquivo contém:

Criação das tabelas

Chaves primárias

Chaves estrangeiras

Tipos de dados

Restrições e relacionamentos

Ele pode ser executado diretamente em um banco PostgreSQL.

🧱 Estrutura do Banco

As seguintes tabelas são criadas no modelo:

companies — empresas responsáveis pelas unidades

users — usuários do sistema

units — unidades consumidoras / medidores

readings — leituras de gás registradas

Todas as tabelas se relacionam de forma consistente e normalizada.

O script de criação está no arquivo **database.sql**.

## 🛠️ Tecnologias Utilizadas
- PostgreSQL

## 📦 Como executar

No PostgreSQL:

```sql
\i database.sql
