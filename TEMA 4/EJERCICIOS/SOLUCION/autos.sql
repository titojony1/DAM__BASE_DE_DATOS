


CREATE table CLIENTES
(
DNICLI     VARCHAR(10),
NOMBRECLI  VARCHAR(15),
CIUDADCLI  VARCHAR(15),
constraint CLIENTES_PK primary key (DNICLI)
);

CREATE table MARCAS 
(
CODMARCA   INT(5),
NOMBREMAR  VARCHAR(15),
CIUDADMAR  VARCHAR(15),
constraint MARCAS_PK primary key (CODMARCA)
);

CREATE table CONCESIONARIOS
(
CIFCONCESI VARCHAR(10),
NOMBRECON  VARCHAR(15),
CIUDADCON  VARCHAR(15),
constraint CONCESIONARIOS_PK primary key (CIFCONCESI)
);

CREATE table COCHES
(
CODCOCHE   INT(5),
CODMARCA   INT(5),
MODELO     VARCHAR(15),
NOMBRECO   VARCHAR(15),
constraint COCHES_PK primary key (CODCOCHE)
);

CREATE table VENTAS
(
CIFCONCESI  VARCHAR(10),
DNICLI	    VARCHAR(10),
CODCOCHE    INT(5),
COLOR	    VARCHAR(15),
constraint  VENTAS_PK primary key (CIFCONCESI, DNICLI, CODCOCHE)
);

alter table COCHES add constraint COCHES_MAR 
foreign key (CODMARCA) references MARCAS (CODMARCA) on delete cascade;
 

alter table VENTAS add constraint VENTAS_COCH 
foreign key (CODCOCHE) references COCHES (CODCOCHE) on delete cascade;  

alter table VENTAS add constraint VENTAS_COCLI 
foreign key (DNICLI) references CLIENTES (DNICLI) on delete cascade;  

alter table VENTAS add constraint VENTAS_CONCE 
foreign key (CIFCONCESI) references CONCESIONARIOS (CIFCONCESI) on delete cascade;



INSERT INTO Clientes VALUES ('10101J','Alfonso Garcia','Luarca');
INSERT INTO Clientes VALUES ('11111A','Luis Garcia   ','Mieres');
INSERT INTO Clientes VALUES ('20202K','Mariano Perez ','Aviles');
INSERT INTO Clientes VALUES ('22222B','Antonio Lopez ','Aviles');
INSERT INTO Clientes VALUES ('30303P','Miguel Martin ','Gijon ');
INSERT INTO Clientes VALUES ('33333C','Juan Martin   ','Gijon ');
INSERT INTO Clientes VALUES ('40404Q','Luisa Menendez','Oviedo');
INSERT INTO Clientes VALUES ('44444D','Maria  Garcia ','Oviedo');
INSERT INTO Clientes VALUES ('50505R','Eva Gonzalez  ','Oviedo');
INSERT INTO Clientes VALUES ('55555E','Javier Gonzale','Aviles');
INSERT INTO Clientes VALUES ('66666F','Ana Lopez     ','Gijon ');
INSERT INTO Clientes VALUES ('77777G','Jose Perez    ','Oviedo');
INSERT INTO Clientes VALUES ('80808V','Jorge Rodrigue','Gijon ');
INSERT INTO Clientes VALUES ('88888H','Javier Alvarez','Gijon ');
INSERT INTO Clientes VALUES ('90909T','Susana Menende','Mieres');
INSERT INTO Clientes VALUES ('99999I','Sonia Suarez  ','Aviles');



INSERT INTO Marcas VALUES (1111,'Seat   ','Barcelona');
INSERT INTO Marcas VALUES (2222,'Renault','Palencia');
INSERT INTO Marcas VALUES (3333,'Nissan ','Avila');
INSERT INTO Marcas VALUES (4444,'Ford   ','Valencia');
INSERT INTO Marcas VALUES (5555,'Opel   ','Zaragoza');



INSERT INTO Concesionarios VALUES ('111A','Concesionario1','Oviedo');
INSERT INTO Concesionarios VALUES ('222B','Concesionario2','Gijon');	
INSERT INTO Concesionarios VALUES ('333C','Concesionario3','Aviles');	
INSERT INTO Concesionarios VALUES ('444D','Concesionario4','Mieres');	
INSERT INTO Concesionarios VALUES ('555E','Concesionario5','Llanes');	


INSERT INTO Coches VALUES (100,1111,'Ibiza','STYLE');
INSERT INTO Coches VALUES (200,1111,'Ibiza','FR');
INSERT INTO Coches VALUES (300,1111,'Toledo','STYLE');
INSERT INTO Coches VALUES (400,1111,'Toledo','I-TECH');
INSERT INTO Coches VALUES (500,2222,'Clio','5P');	
INSERT INTO Coches VALUES (600,2222,'Clio','RS');
INSERT INTO Coches VALUES (700,2222,'Megane','5P');
INSERT INTO Coches VALUES (800,2222,'Captur','Captur');
INSERT INTO Coches VALUES (900,3333,'Micra','Micra');
INSERT INTO Coches VALUES (1010,3333,'Murano','Murano');
INSERT INTO Coches VALUES (1100,4444,'Fiesta','Fiesta 3P');
INSERT INTO Coches VALUES (1200,4444,'Fiesta','Fiesta 5P');
INSERT INTO Coches VALUES (1300,4444,'Kuga','Kuga');
INSERT INTO Coches VALUES (1400,4444,'Focus','Focus SP');
INSERT INTO Coches VALUES (1500,4444,'Focus','Focus 5P');
INSERT INTO Coches VALUES (1600,5555,'Astra','GTC');
INSERT INTO Coches VALUES (1700,5555,'Astra','Sedan');
INSERT INTO Coches VALUES (1800,5555,'Zafira','Zafira');
INSERT INTO Coches VALUES (1900,5555,'Corsa','3P');	
INSERT INTO Coches VALUES (2000,5555,'Corsa','5P');	



INSERT INTO Ventas VALUES ('111A','11111A',100,'Blanco');
INSERT INTO Ventas VALUES ('111A','22222B',100,'Azul');
INSERT INTO Ventas VALUES ('111A','33333C',200,'Rojo');
INSERT INTO Ventas VALUES ('222B','77777G',300,'Blanco');
INSERT INTO Ventas VALUES ('222B','88888H',700,'Verde');
INSERT INTO Ventas VALUES ('222B','99999I',700,'Blanco');
INSERT INTO Ventas VALUES ('333C','11111A',900,'Rojo');
INSERT INTO Ventas VALUES ('333C','22222B',1010,'Blanco');
INSERT INTO Ventas VALUES ('333C','44444D',1010,'Rojo');
INSERT INTO Ventas VALUES ('333C','55555E',1100,'Blanco');
INSERT INTO Ventas VALUES ('444D','66666F',1300,'Azul');
INSERT INTO Ventas VALUES ('444D','44444D',1300,'Rojo');
INSERT INTO Ventas VALUES ('444D','10101J',1800,'Negro');
INSERT INTO Ventas VALUES ('444D','20202K',1900,'Azul');
INSERT INTO Ventas VALUES ('444D','30303P',200,'Rojo');
INSERT INTO Ventas VALUES ('444D','40404Q',600,'Negro');
INSERT INTO Ventas VALUES ('555E','50505R',500,'Blanco');
INSERT INTO Ventas VALUES ('555E','90909T',200,'Verde');
INSERT INTO Ventas VALUES ('555E','80808V',2000,'Blanco');


Commit;





  