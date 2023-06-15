--> CRIANDO DATABASE <--

create database fotoVoltNews;
use fotovoltnews;

--> CRIANDO A TABLE 1 <--
create table cadastro(
id_cadastro int not null auto_increment,
email varchar (50) not null,
senha varchar (20) not null,
data_cadastro datetime not null,
primary key (id_cadastro)
);

--> CRIANDO A TABLE 2 <--
  create table usuario(
  id_usuario int not null auto_increment ,
  nome VARCHAR(45) not NULL,
  data_nascimento date not NULL,
  cidade VARCHAR (30) not NULL,
  cadastro_id int not null,
  primary key (id_usuario),
  foreign key (cadastro_id) references cadastro (id_cadastro)
);


--> CRIANDO A TABLE 3 <--
CREATE table pessoa_fisica(
  id_pessoa_fisica int not null auto_increment,
  cpf VARCHAR (11) not NULL,
  sexo VARCHAR (10) not NULL,
  cadastro_id int not null,
  primary key (id_pessoa_fisica),
  foreign key (cadastro_id) references cadastro (id_cadastro)
  );

  --> CRIANDO ATABLE 4 <--
  create table comentarios(
  id_comentario int not null auto_increment,
  comentario VARCHAR (250),
  data_comentario date not NULL,
  usuario_id int not null,
  PRIMARY KEY (id_comentario),
  foreign key(usuario_id) references usuario (id_usuario)
  );
  
  --> CRIANDO A TABLE 5 <--
  CREATE TABLE pessoa_juridica(
  id_ps_juridica int not null auto_increment ,
  cnpj VARCHAR (14) not NULL,
  sexo VARCHAR (10) not null,
  cadastro_id int not null,
  PRIMARY KEY (id_ps_juridica),
  foreign key (cadastro_id) references cadastro (id_cadastro)
  );
  
--> INSERINDO OS DADOS NA TABLE 1 <--
insert into cadastro
(email, senha, data_cadastro) 
VALUES
('bruno@gmail.com', '123','2023-04-07'),
('claudia@gmail.com','456','2023-12-3'),
('david@gmail.com','789','2020-05-30'),
('henrique@gmail.com','101112','2022-07-26'),
('joice@gmail.com','131415','2023-05-22'),
('maria@gmail.com','161718','2020-09-30'),
('rodinei@gmail.com','192021','2021-05-30'),
('otavio@gmail.com','222324','2022-12-01');


--> INSERINDO OS DADOS NA TABLE 2 <--
insert into usuario(nome, data_nascimento, cidade, cadastro_id) 
VALUES
('Bruno','1990-05-23','Blumenal', 1),
('Claudia','1994-05-07','Minas Gerais', 2),
('David','1989-04-23','Manaus', 3),
('Henrique','1990-08-19','Florianópolis', 4),
('Joice','1983-06-04','Bahia', 5),
('Maria','1983-02-03','Rio de janeiro', 6),
('Rodinei','1993-08-09','Bahia', 7),
('Otavio','1992-02-22','Santa Catarina', 8);


--> INSERINDO OS DADOS NA TABLE 3 <--
insert into pessoa_fisica 
(sexo, cpf, cadastro_id)
 VALUES
('Masculino','12878999372', 1),
('Feminino','13345678679', 2),
('F','13345678679', 3),
('Masculino','13345678680', 4),
('M','13345678681', 5),
('Feminino','13345678682', 6),
('M','13345678683', 7),
('M','13345678684',8);

--> INSERINDO OS DADOS NA TABLE 4 <--
insert INTO comentarios(comentario, data_comentario, usuario_id) VALUES
('Adorei esse artigo','2022-05-23', 1),
('Muito bom !','2023-03-03', 2),
('up','2023-04-27', 3),
('Muito massa','2023-06-05', 4),
('Ruim','2023-06-07', 5),
('Nossa','2023-06-10', 6),
('top de mais da conta ','2023-06-11', 7),
('Parabéns','2023-06-08', 8);

--> INSERINDO OS DADOS NA TABLE 5 <--
insert into pessoa_juridica (sexo, cnpj, cadastro_id) VALUES
('M','12.345.678/0001-00', 1),
('Feminino','12.356.788/0001-00', 2),
('Feminino','18.345.678/0001-00', 3),
('M','19.345.678/0001-00', 4),
('M','20.345.678/0001-00', 5),
('F','67.345.678/0001-00', 6),
('Masculino','94.345.678/0001-00', 7),
('M','54.345.678/0001-00', 8);


--> 1° CONSULTA COM METODO INNER JOIN <--
select email, senha, data_cadastro from cadastro
inner join usuario on cadastro.id_cadastro = usuario.cadastro_id;

RETURN:
-------------------------------------------------------
    EMAIL         |    SENHA     |  DATA_CADASTRO    |   

 bruno@gmail.com         123      2023-04-07 00:00:00 |

 claudia@gmail.com       456      2023-12-03 00:00:00 |

 david@gmail.com         789      2020-05-30 00:00:00 |

 henrique@gmail.com     101112    2022-07-26 00:00:00 |

 joice@gmail.com        131415    2023-05-22 00:00:00 |

 maria@gmail.com        161718    2020-09-30 00:00:00 |

 rodinei@gmail.com      192021    2021-05-30 00:00:00 |

 otavio@gmail.com       222324    2022-12-01 00:00:00 |
-------------------------------------------------------   


--> 1° CONSULTA COM METODO LEFT JOIN <--

select  id_usuario, nome, data_nascimento, cidade from usuario 
left join comentarios on usuario.id_usuario = comentarios.usuario_id;

RETURN:
------------------------------------------------------------
    ID_USUARIO |    NOME    |  DATA_NACIMENTO  |  CIDADE     |

         1        Bruno        1990-05-23         Blumenal   |
 
         2        Claudia      1994-05-07       Minas Gerais |

         3        David        1989-04-23         Manaus     |

         4        Henrique     1990-08-19      Florianópolis |

         5        Joice        1983-06-04         Bahia      |

         6        Maria        1983-02-03     Rio de janeiro |

         7       Rodinei      1993-08-09         Bahia       |

         8        Otavio       1992-02-22     Santa Catarina |
--------------------------------------------------------------

       


--> CONSULTA SIMPLES <--

select cpf, cadastro_id
from pessoa_fisica
where sexo = 'Masculino'

RETURN:
--------------------------------
      CPF      | CADASTRO_ID   |

  12878999372         1        |

  13345678680         4        |
--------------------------------

select cpf, cadastro_id
from pessoa_fisica
where sexo = 'Masculino';


select id_usuario, data_nascimento, cidade, cadastro_id
from usuario
where nome = 'Bruno';

RETURN:
-------------------------------------------------------
  ID_USUARIO | DATA_NASCIMENTO | CIDADE | CADASTRO_ID |
   
       1          1990-05-23     Blumenal       1     |
-------------------------------------------------------

