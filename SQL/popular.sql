-- Inserir dados na tabela TB_USUARIO
INSERT INTO TB_USUARIO (id_usuario, nome, data_inclusao) VALUES
(10001, 'Usuario1', '2023-10-13'),
(10002, 'Usuario2', '2023-10-14'),
(10003, 'Usuario3', '2023-10-15');

-- Inserir dados na tabela TB_CONTA
INSERT INTO TB_CONTA (nickname, senha, data_inclusao, id_usuario) VALUES
('usuario1', 'senha1', '2023-10-13', 10001),
('usuario2', 'senha2', '2023-10-14', 10002),
('usuario3', 'senha3', '2023-10-15', 10003);

-- Inserir dados na tabela TB_SEGUIDOR (relações de seguidores)
INSERT INTO TB_SEGUIDOR (data, nickname_seguidor, nickname_seguido) VALUES
('2023-10-13', 'usuario1', 'usuario2'),
('2023-10-14', 'usuario2', 'usuario3'),
('2023-10-15', 'usuario3', 'usuario1');

-- Inserir dados na tabela TB_POST
INSERT INTO TB_POST (imagem, data, nickname) VALUES
('Imagem1', '2023-10-13', 'usuario1'),
('Imagem2', '2023-10-14', 'usuario2'),
('Imagem3', '2023-10-15', 'usuario3');

-- Inserir dados na tabela TB_LIKE_DESLIKE (likes e deslikes em posts)
INSERT INTO TB_LIKE_DESLIKE (data, status, nickname, id_post) VALUES
('2023-10-13', 'L', 'usuario2', 1),
('2023-10-14', 'D', 'usuario3', 2),
('2023-10-15', 'L', 'usuario1', 3);

-- Inserir dados na tabela TB_COMENTARIO (comentários em posts)
INSERT INTO TB_COMENTARIO (texto_comentario, data, nickname, id_post) VALUES
('Comentário 1', '2023-10-13', 'usuario2', 1),
('Comentário 2', '2023-10-14', 'usuario3', 2),
('Comentário 3', '2023-10-15', 'usuario1', 3);

-- Inserir dados na tabela TB_LIKE_DESLIKE_COMENTARIO (likes e deslikes em comentários)
INSERT INTO TB_LIKE_DESLIKE_COMENTARIO (data, status, nickname, id_comentario) VALUES
('2023-10-13', 'L', 'usuario2', 1),
('2023-10-14', 'D', 'usuario3', 2),
('2023-10-15', 'L', 'usuario1', 3);
