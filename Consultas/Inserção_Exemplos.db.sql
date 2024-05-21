--Exemplo de inserção de dados:
insert into DIRETORES (dir_nome, dir_nascionalidade, dir_data_nasc)
			VALUES    ('Denis Villeneuve', 'Canada', '03/10/1967');
                       
INSERT into ROTEIRISTAS (rot_nome, rot_nascionalidade, rot_data_nasc)
			VALUES      ('Jon Spaihts', 'EUA', '04/02/1970');

INSERT into PRODUTORES (prod_nome, prod_nascionalidade, prod_data_nasc)
			VALUES     ('Cole Boyter', 'EUA', '28/06/1972');

INSERT into DISTRIBUIDORAS (dist_nome, dist_sede, dist_ano_fundação)
			VALUES         ('Entertainment Film Distributors', 'UK', 1978);

INSERT into FILMES (filme_nome, filme_genero, filme_sub_genero, filme_nota,
                    filme_lançamento, id_diretor, id_roteirista, id_produtor,id_distribuidora)
            VALUES ('Dune Part II', 'Sci-fi', 'Action', 92, 2024, 13, 13, 18, 5); 