CREATE TABLE pontos_coleta (
    id_ponto INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    contato VARCHAR(100)
);

CREATE TABLE materiais_aceitos (
    id_material INT,
    id_ponto INT NOT NULL,
    tipo_material VARCHAR(100),
    aceita VARCHAR(3),
    observacao TEXT,
    PRIMARY KEY (id_ponto, id_material, tipo_material),
    FOREIGN KEY (id_ponto) REFERENCES pontos_coleta(id_ponto) ON DELETE CASCADE
);

CREATE TABLE procedimentos_descarte (
    id_procedimento INT PRIMARY KEY,
    id_ponto INT NOT NULL,
    horario VARCHAR(255),
    agendamento VARCHAR(3),
    custo VARCHAR(50),
    modalidade VARCHAR(100),
    FOREIGN KEY (id_ponto) REFERENCES pontos_coleta(id_ponto) ON DELETE CASCADE
);

CREATE TABLE evidencias (
    id_evidencia INT,
    id_ponto INT NOT NULL,
    tipo VARCHAR(100),
    descricao TEXT,
    arquivo_link TEXT,
    data DATE,
    FOREIGN KEY (id_ponto) REFERENCES pontos_coleta(id_ponto) ON DELETE CASCADE
);

CREATE TABLE analise_critica (
    id_analise INT PRIMARY KEY,
    cidade VARCHAR(100),
    facilidade VARCHAR(100),
    dificuldade VARCHAR(100),
    divulgacao VARCHAR(100),
    melhorias TEXT
);
