create database T_InLock;

use T_InLock;

create table Permissoes
(
IdPermissao			int primary key identity
,Tipo				varchar (200) not null unique 
);

create table Usuarios
(
IdUsuario			int primary key identity
,Email				varchar (200) not null unique
,Senha				varchar (200) not null  
,IdPermissao		int foreign key references Permissoes (IdPermissao)
);

create table Estudios
(
IdEstudio			int primary key identity 
,Nome				varchar (200) not null unique 
,PaisOrigem			varchar (200) not null
,DataCriacao		date
,IdUsuario			int foreign key references Usuarios (IdUsuario)
);

create table Jogos
(
IdJogos				int primary key identity
,Nome				varchar (200) not null unique 
,Descricao			varchar (250) not null unique 
,DataLancamento		date
,valor				varchar (200) not null
, IdEstudio			int foreign key references Estudios (IdEstudio)
);