# Ex1 selecionar todas as gafanhotas
select nome; from gafanhotos where sexo = 'F';
#Ex2 selecionar todos os nascidos ente as datas
select * from gafanhotos where nascimento between '2000-1-1' and '2015-12-31';
#Ex3 selecionar os cara programador
select * from gafanhotos where sexo = 'M' and profissao = 'Programador' order by nome;
#Ex4
select * from gafanhotos where nacionalidade = 'Brasil' and sexo = 'F' and nome like  'J%';
#Ex5
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%silva' and peso < '100' and nacionalidade != 'Brasil'; 
#Ex6
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';
#Ex7
select avg(peso) from gafanhotos;
#Ex8
select min(peso) from gafanhotos where sexo = 'F' and nascimento between '1990-01-01' and '2000-12-31' and nacionalidade != 'Brasil';
#Ex9
select count(altura) from gafanhotos where sexo = 'F' and altura > '1.90';