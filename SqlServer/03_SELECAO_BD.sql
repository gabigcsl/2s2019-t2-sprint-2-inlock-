use T_InLock;

select * from Usuarios;

select * from Estudios;

select * from Jogos;

select Jogos.Nome, Estudios.Nome
from Jogos
join Estudios on Jogos.IdJogos = Estudios.IdEstudio

select *  from Usuarios where Email = 'Admin@Admin.com' and Senha = 'admin'

select * from Jogos where IdJogos = 3
select * from Jogos where IdJogos = 2

select * from Estudios where IdEstudio = 1
select * from Estudios where IdEstudio = 2
select * from Estudios where IdEstudio = 3

