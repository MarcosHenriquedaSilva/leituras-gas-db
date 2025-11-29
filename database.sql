CREATE TABLE unidades (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200)
);

CREATE TABLE moradores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150),
    telefone VARCHAR(20),
    unidade_id INTEGER REFERENCES unidades(id)
);

CREATE TABLE leituras_gas (
    id SERIAL PRIMARY KEY,
    unidade_id INTEGER REFERENCES unidades(id),
    leitura NUMERIC(10,2) NOT NULL,
    data_leitura DATE NOT NULL DEFAULT CURRENT_DATE,
    registrado_por VARCHAR(150)
);
