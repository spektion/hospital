create database hospital;

create table Quarto
    (
     id_qt int not null AUTO_INCREMENT,
     andar int not null,
     porta varchar (255),
     cama varchar (255),
     PRIMARY KEY (id_qt)
    );
create table Pacientes
    (
     id_pac int not null AUTO_INCREMENT,
     nome varchar (255),
     idade int not null,
     doenca varchar (255),
     id_qt int not null,
     visitNum int not null,
     visit boolean,
     alta boolean,
     PRIMARY KEY (id_pac),
     FOREIGN KEY (id_qt) REFERENCES Quarto(id_qt)
    );

create table Visita
    (
     id_vis int not null AUTO_INCREMENT,
     nome varchar (255),
     idade int not null,
     cc int not null,
     tel int not null,
     id_pac int not null,
     PRIMARY KEY (id_vis),
     FOREIGN KEY (id_pac) REFERENCES Pacientes(id_pac)
    );
    
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'A','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'A','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'A','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'A','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'B','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'B','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'B','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'B','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'C','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'C','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'C','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'C','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'D','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'D','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'D','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'D','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'E','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'E','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'E','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'E','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'F','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'F','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'F','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (1,'F','IV');
   
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'A','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'A','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'A','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'A','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'B','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'B','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'B','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'B','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'C','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'C','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'C','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'C','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'D','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'D','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'D','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'D','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'E','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'E','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'E','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'E','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'F','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'F','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'F','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (2,'F','IV');
   
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'A','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'A','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'A','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'A','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'B','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'B','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'B','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'B','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'C','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'C','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'C','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'C','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'D','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'D','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'D','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'D','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'E','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'E','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'E','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'E','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'F','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'F','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'F','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (3,'F','IV');
   
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'A','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'A','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'A','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'A','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'B','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'B','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'B','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'B','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'C','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'C','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'C','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'C','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'D','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'D','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'D','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'D','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'E','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'E','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'E','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'E','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'F','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'F','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'F','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (4,'F','IV');
   
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'A','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'A','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'A','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'A','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'B','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'B','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'B','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'B','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'C','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'C','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'C','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'C','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'D','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'D','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'D','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'D','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'E','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'E','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'E','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'E','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'F','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'F','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'F','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (5,'F','IV');
   
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'A','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'A','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'A','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'A','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'B','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'B','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'B','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'B','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'C','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'C','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'C','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'C','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'D','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'D','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'D','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'D','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'E','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'E','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'E','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'E','IV');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'F','I');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'F','II');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'F','III');
   INSERT INTO Quarto (andar, porta, cama) VALUES (6,'F','IV');
   
   insert into Pacientes(nome,idade,doenca,id_qt,visitNum,visit,alta) VALUES ('gfaria',40,'fungos nas unhas',10,4,true,false);
   insert into Pacientes(nome,idade,doenca,id_qt,visitNum,visit,alta) VALUES ('juvenal',20,'hemoroidas',48,4,true,false);
