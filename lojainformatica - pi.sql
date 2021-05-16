create database loja_informatica;


CREATE TABLE cliente (
    nome_cli int unique,
    cpf_cli varchar(11) PRIMARY KEY not null,
    email_cli varchar(20),
    telefone char(11),
    endereco varchar(20),
    data_nasc varchar(8),
    cep char(8),
    cidade varchar(15),
    uf char(2),
    complemento varchar(20),
    estado_civil varchar(10)
);

CREATE TABLE loja (
    id_prod int unique,
    id_pedido int unique ,
    cpf_cli varchar (11) unique,
    relatorio_ped varchar(16),
    PRIMARY KEY (id_prod)
);

CREATE TABLE produto (
    nome_prod varchar(20),
    descricao varchar(50),
    quantidade char(2),
    preco char(9),
    cod_prod int PRIMARY KEY
);


CREATE TABLE cadastro (
    fk_Cliente_cpf_cli varchar(11),
    fk_Loja_id_prod int,
    fk_Loja_id_pedido int
);
 


CREATE TABLE vendedor (
    nome_vendedor varchar(40),
    cod_vendedor int PRIMARY KEY auto_increment not null
   );
   
CREATE TABLE Compra (
    fk_Cliente_cpf_cli varchar(11),
    fk_Vendedor_cod_vendedor int
);
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra
    FOREIGN KEY (fk_Cliente_cpf_cli)
    REFERENCES Cliente (cpf_cli)
    ON DELETE SET NULL;
 


CREATE TABLE Venda (
    fk_Vendedor_cod_vendedor int,
    fk_Produto_cod_prod int
);
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda
    FOREIGN KEY (fk_Vendedor_cod_vendedor)
    REFERENCES Vendedor (cod_vendedor)
    ON DELETE SET NULL;
    
    
 
