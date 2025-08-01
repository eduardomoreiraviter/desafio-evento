INSERT INTO tb_categoria(descricao) VALUES ('Curso');
INSERT INTO tb_categoria(descricao) VALUES ('Oficina');

INSERT INTO tb_atividade(categoria_id, name, descicao, preco) VALUES (1, 'Curso de HTML', 'Aprenda HTML de forma pratica', 80.0);
INSERT INTO tb_atividade(categoria_id, name, descicao, preco) VALUES (2, 'Oficina de Github', 'Controle versões de seus projetos', 50.0);

INSERT INTO tb_bloco(atividade_id, inicio, fim) VALUES (1, TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z');
INSERT INTO tb_bloco(atividade_id, inicio, fim) VALUES (2, TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00Z');
INSERT INTO tb_bloco(atividade_id, inicio, fim) VALUES (2, TIMESTAMP WITH TIME ZONE '2017-09-26T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-26T11:00:00Z');

INSERT INTO tb_participante(nome, email) VALUES ('José Silva', 'jose@gmail');
INSERT INTO tb_participante(nome, email) VALUES ('Tiago Faria', 'tiago@gmail');
INSERT INTO tb_participante(nome, email) VALUES ('Maria Do Rosario', 'maria@gmail');
INSERT INTO tb_participante(nome, email) VALUES ('Teresa', 'teresa@gmail');

INSERT INTO tb_atividade_participante(atividade_id, participante_id) VALUES (1, 1);
INSERT INTO tb_atividade_participante(atividade_id, participante_id) VALUES (1, 2);
INSERT INTO tb_atividade_participante(atividade_id, participante_id) VALUES (1, 3);
INSERT INTO tb_atividade_participante(atividade_id, participante_id) VALUES (2, 1);
INSERT INTO tb_atividade_participante(atividade_id, participante_id) VALUES (2, 3);
INSERT INTO tb_atividade_participante(atividade_id, participante_id) VALUES (2, 4);
