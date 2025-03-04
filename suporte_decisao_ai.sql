-- Script SQL para Suporte à Decisão com IA
CREATE TABLE modelos_decisao (
    id SERIAL PRIMARY KEY,
    nome_modelo VARCHAR(255) NOT NULL,
    descricao TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE registros_decisao (
    id SERIAL PRIMARY KEY,
    id_modelo INT REFERENCES modelos_decisao(id),
    texto_decisao TEXT NOT NULL,
    confianca DECIMAL(5,2) CHECK (confianca BETWEEN 0 AND 1),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
