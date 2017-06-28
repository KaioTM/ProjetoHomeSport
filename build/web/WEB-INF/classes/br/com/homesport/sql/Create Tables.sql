CREATE TABLE USUARIO
(
    USUARIOID int not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    NOME VARCHAR (100),
    SOBRENOME VARCHAR (100),
    LOCALMORADIA VARCHAR (100),
    ESPORTEFAVORITO VARCHAR (100),
    RECEBERHOSPEDE VARCHAR (100),
    QUANTIDADEHOSPEDE VARCHAR (100),
    LOGIN VARCHAR (100),
    SENHA VARCHAR (100)
)

CREATE TABLE HOSPEDAGEM
(
   IDHOSPEDAGEM VARCHAR (100) not null primary key,
   IDANFITRIAO VARCHAR (100),
   IDHOSPEDE VARCHAR (100),
   IDNOTA VARCHAR (100)
   
)

CREATE TABLE NOTA
    (IDNOTA int not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    TIPOAVALIACAO VARCHAR(100),
    IDPESSOAAVALIADOR int(100),
    IDPESSOAAVALIADO int(100),
    NOTA int(100),
    COMENTARIO VARCHAR(500)
)
