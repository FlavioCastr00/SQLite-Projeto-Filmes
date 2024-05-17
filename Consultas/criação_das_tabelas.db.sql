CREATE table DIRETORES(
id_diretor         integer PRIMARY KEY AUTOINCREMENT,
dir_nome           VARCHAR(45),
dir_nascionalidade VARCHAR(15),
dir_data_nasc      DATE
);

CREATE TABLE ROTEIRISTAS(
id_roteirista      integer PRIMARY KEY AUTOINCREMENT,
rot_nome           VARCHAR(45),
rot_nascionalidade VARCHAR(15),
rot_data_nasc      DATE
);

CREATE TABLE PRODUTORES(
id_produtor         integer PRIMARY KEY AUTOINCREMENT,
prod_nome           VARCHAR(45),
prod_nascionalidade VARCHAR(15),
prod_data_nasc      DATE
);

CREATE TABLE DISTRIBUIDORAS(
id_distribuidora  integer PRIMARY KEY AUTOINCREMENT,
dist_nome         VARCHAR(45),
dist_sede         VARCHAR(15),
dist_ano_fundação INT
);

create table FILMES(
id_filme         integer PRIMARY KEY AUTOINCREMENT,
filme_nome       VARCHAR(45),
filme_genero     VARCHAR(20),
filme_sub_genero VARCHAR(20),
filme_nota       double,
filme_lançamento INT,
id_diretor       integer,
id_roteirista    integer,
id_produtor      integer,
id_distribuidora integer,
FOREIGN KEY (id_diretor)       REFERENCES DIRETORES(id_diretor),
FOREIGN KEY (id_roteirista)    REFERENCES ROTEIRISTAS(id_roteirista),
FOREIGN KEY (id_produtor)      REFERENCES PRODUTORES(id_produtor),
FOREIGN KEY (id_distribuidora) REFERENCES DISTRIBUIDORA(id_distribuidora)
);

CREATE TABLE PREMIAÇÕES(
oscar         bool,
globo_de_ouro bool,
bafta         bool,
id_filme      integer,
id_diretor    integer,
id_roteirista integer,
PRIMARY KEY (id_filme),
FOREIGN KEY (id_filme)      REFERENCES FILMES(id_filme),
FOREIGN KEY (id_diretor)    REFERENCES DIRETORES(id_diretor),
FOREIGN KEY (id_roteirista) REFERENCES ROTEIRISTAS(id_roteirista)
);