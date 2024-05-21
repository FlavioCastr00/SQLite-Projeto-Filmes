--Exemplos de Select não performáticos:
SELECT * from DIRETORES;
SELECT * FROM ROTEIRISTAS;
SELECT * FROM PRODUTORES;
SELECT * FROM DISTRIBUIDORAS;

--Exemplos de Select performáticos
SELECT id_filme,
	   filme_nome,
       filme_nota,
       filme_lançamento,
       dir_nome, rot_nome,
       prod_nome, dist_nome FROM FILMES
       INNER JOIN DIRETORES ON DIRETORES.id_diretor = FILMES.id_diretor
       INNER join ROTEIRISTAS on ROTEIRISTAS.id_roteirista = FILMES.id_roteirista
       INNER JOIN PRODUTORES on PRODUTORES.id_produtor = FILMES.id_produtor
       INNER JOIN DISTRIBUIDORAS on DISTRIBUIDORAS.id_distribuidora = FILMES.id_distribuidora
       WHERE dir_nome = 'Alex Garland';

SELECT dir_nome, AVG(filme_nota), COUNT(id_filme) from FILMES
INNER JOIN DIRETORES ON DIRETORES.id_diretor = FILMES.id_diretor
GROUP BY dir_nome ORDER BY AVG(filme_nota) DESC;