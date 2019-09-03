use T_InLock;

---inserir permissoes
insert into Permissoes (Tipo) values ('Administrador');
insert into Permissoes (Tipo) values ('Cliente');

---inserir Usuarios
insert into Usuarios (Email, Senha, IdPermissao) values ('admin@admin.com','admin',1);
insert into Usuarios (Email, Senha, IdPermissao) values ('cliente@cliente.com','cliente',2);

----inserir estudios 
insert into Estudios (Nome, PaisOrigem, DataCriacao, IdUsuario) values ('Blizzard','EUA','08/02/1991',1);
insert into Estudios (Nome, PaisOrigem, DataCriacao, IdUsuario) values ('Rockstar Studios','EUA','12/12/1998',1);
insert into Estudios (Nome, PaisOrigem, DataCriacao, IdUsuario) values ('Square Enix','Jap�o','04/04/2003',1);

----inserir jogos
insert into Jogos (Nome, Descricao, DataLancamento, valor, IdEstudio) values ('Diablo 3','� um jogo que cont�m bastante a��o e � viciante, seja voc� um novato ou um f�','2012-05-15','R$99,00',1);
insert into Jogos (Nome, Descricao, DataLancamento, valor, IdEstudio) values ('Red dead Redemption 2','jogo eletr�nico de a��o-aventura western','2018-10-26','R$120,00',2);
insert into Jogos (Nome, Descricao, DataLancamento, valor, IdEstudio) values ('Caf� Mania','teste suas abilidades na cozinha','2006-06-23','R$100,00',1);
insert into Jogos (Nome, Descricao, DataLancamento, valor, IdEstudio) values ('Fifa','se sinta em um jogo real da FIFA','2017-08-11','R$200,00',3);
insert into Jogos (Nome, Descricao, DataLancamento, valor, IdEstudio) values ('Vila Magica','construa sua vida em um lugar magico','2004-03-05','R$120,00',3);

