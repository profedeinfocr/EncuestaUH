
create DATABASE EncuestasUH

use EncuestasUH

drop table Persona

alter table Persona
add direccion varchar (100)

create table Persona
(

cedulaP varchar (15) primary key,
nombre varchar (50) not null,
genero char (1) constraint chk_genero Check (Genero = 'F' or Genero = 'M'),
fecha date constraint Def_fecha Default Getdate()
)

insert into Persona values ('1', 'Rosario', 'F', null) //manda null
insert into Persona (cedulaP, nombre, genero) values ('2', 'Michael', 'M')
select *from Persona 

create table Respuestas0
(
id int identity (1,1),
cedulaR  varchar (15),
r1 char (1),
r2 char (2),
r3 char (3)
constraint PK_id Primary key(id),
constraint FK_cedula Foreign key (cedulaR) references Persona (cedulaP)
)

insert into Persona values ('1', 'Nazareth Carmona', 'F', GETDATE())

select * from Persona
select * from Respuestas

insert into Respuestas0 values ('1001', 'a', 'b', 'c')

--inner join (Une las 2 tablas)

select resp.id, pers.nombre, resp.cedulaR, resp.r1, resp.r2, resp.r3
from Respuestas0 resp inner join Persona pers on resp.cedulaR = pers.cedulaP



