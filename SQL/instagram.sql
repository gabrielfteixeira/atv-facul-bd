-- Criar o banco de dados "Instagram" se ele não existir
CREATE DATABASE IF NOT EXISTS Instagram;

-- Usar o banco de dados "Instagram"
USE Instagram;

-- Criar a tabela "TB_USUARIO"
CREATE TABLE IF NOT EXISTS TB_USUARIO (
    id_usuario INT(5) NOT NULL,
    nome VARCHAR(255),
    data_inclusao DATE,
    PRIMARY KEY (id_usuario)
);

-- Criar a tabela "TB_CONTA"
CREATE TABLE IF NOT EXISTS TB_CONTA (
    nickname VARCHAR(255) NOT NULL,
    senha VARCHAR(25),
    data_inclusao DATE,
    id_usuario INT(5),
    PRIMARY KEY (nickname),
    FOREIGN KEY (id_usuario) REFERENCES TB_USUARIO(id_usuario)
);

-- Criar a tabela "TB_SEGUIDOR"
CREATE TABLE IF NOT EXISTS TB_SEGUIDOR (
    id_seguidor INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    nickname_seguidor VARCHAR(255),
    nickname_seguido VARCHAR(255),
    FOREIGN KEY (nickname_seguidor) REFERENCES TB_CONTA(nickname),
    FOREIGN KEY (nickname_seguido) REFERENCES TB_CONTA(nickname)
);

-- Criar a tabela "TB_POST"
CREATE TABLE IF NOT EXISTS TB_POST (
    id_post INT AUTO_INCREMENT PRIMARY KEY,
    imagem MEDIUMBLOB,
    data DATE,
    nickname VARCHAR(255),
    FOREIGN KEY (nickname) REFERENCES TB_CONTA(nickname)
);

-- Criar a tabela "TB_LIKE_DESLIKE"
CREATE TABLE IF NOT EXISTS TB_LIKE_DESLIKE (
    id_like_deslike INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    status CHAR(1),
    nickname VARCHAR(255),
    id_post INT,
    FOREIGN KEY (nickname) REFERENCES TB_CONTA(nickname),
    FOREIGN KEY (id_post) REFERENCES TB_POST(id_post)
);

-- Criar a tabela "TB_COMENTARIO"
CREATE TABLE IF NOT EXISTS TB_COMENTARIO (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    texto_comentario VARCHAR(1000),
    data DATE,
    nickname VARCHAR(255),
    id_post INT,
    FOREIGN KEY (nickname) REFERENCES TB_CONTA(nickname),
    FOREIGN KEY (id_post) REFERENCES TB_POST(id_post)
);

-- Criar a tabela "TB_LIKE_DESLIKE_COMENTARIO"
CREATE TABLE IF NOT EXISTS TB_LIKE_DESLIKE_COMENTARIO (
    id_like_deslike_comentario INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    status CHAR(1),
    nickname VARCHAR(255),
    id_comentario INT,
    FOREIGN KEY (nickname) REFERENCES TB_CONTA(nickname),
    FOREIGN KEY (id_comentario) REFERENCES TB_COMENTARIO(id_comentario)
);
