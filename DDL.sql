CREATE TABLE IF NOT EXISTS produto_schema.marca(
	id BIGINT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	data_fundacao DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS produto_schema.produto(
	id BIGINT PRIMARY KEY,
	marca_id BIGINT NOT NULL,
	nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	FOREIGN KEY(marca_id) 
		REFERENCES produto_schema.marca(id)
		ON DELETE CASCADE
);