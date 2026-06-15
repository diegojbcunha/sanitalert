create database sanitalert;

create table usuarios (
	id SERIAL primary key,
	nome varchar(100) not null,
	email VARCHAR(100) unique not null,
	senha_hash varchar(255) not null,
	criado_em timestamp default now()
);

CREATE TABLE banheiros (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  localizacao VARCHAR(255) NOT NULL,
  ativo BOOLEAN DEFAULT TRUE,
  criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE chamados (
  id SERIAL PRIMARY KEY,
  banheiro_id INTEGER NOT NULL REFERENCES banheiros(id),
  categoria VARCHAR(50) NOT NULL,
  descricao TEXT,
  status VARCHAR(20) DEFAULT 'aberto',
  resolvido_por INTEGER REFERENCES usuarios(id),
  criado_em TIMESTAMP DEFAULT NOW(),
  atualizado_em TIMESTAMP DEFAULT NOW()
);

INSERT INTO usuarios (nome, email, senha_hash) VALUES (
  'Admin SENAI',
  'admin@senai.com',
  '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'
);

INSERT INTO banheiros (nome, localizacao) VALUES
  ('Banheiro Masculino', 'CIMATEC 2 - T'),
  ('Banheiro Feminino', 'CIMATEC 2 - T'),
  ('Banheiro Masculino', 'CIMATEC 3 - 1'),
  ('Banheiro Feminino', 'CIMATEC 3 - 1');