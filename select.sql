CREATE TABLE itau.cargo (
  CodCargo char(2) NOT NULL,
  NomeCargo varchar(50) NOT NULL,
  ValorCargo DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (`CodCargo`)
);

drop table itau.funcionario

​CREATE TABLE itau.funcionario (
  Matricula int(3) NOT NULL,
  NomeFuncionario varchar(50) NOT NULL,
  CodCargo char(2) NOT NULL,
  PRIMARY KEY (`Matricula`),
  FOREIGN KEY (CodCargo) REFERENCES CARGO(CodCargo)
);

insert into itau.cargo
(CodCargo,NomeCargo,ValorCargo)
values
("C1","CAIXA",890,00),
("C2","VENDEDOR",1890,00),
("C3","GERENTE",4999,99),
("C4","ADM_REDE",3600,99),