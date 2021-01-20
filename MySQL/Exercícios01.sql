-- Ex1 Selecionar todas os gafanhotos do sexo feminino:

select nome; from gafanhotos where sexo = 'F';

-- Ex2 Selecionar todos os nascidos entre as datas 01/jan/2000 e 31/dez/2015:

select * from gafanhotos where nascimento between '2000-1-1' and '2015-12-31';

-- Ex3 Selecionar todos os gafanhotos do sexo masculino que são programadores:

select * from gafanhotos where sexo = 'M' and profissao = 'Programador' order by nome;

-- Ex4 Faça uma seleção de todas a mulheres que nasceram no Brasil e a primeira letra do nome começa com a letra 'J':

select * from gafanhotos 
where nacionalidade = 'Brasil' and sexo = 'F' and nome like  'J%';

-- Ex5 Selecione todos os homens que tem 'Silva' como sobrenome e NÂO moram no Brasil:

select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%silva' and peso < '100' and nacionalidade != 'Brasil'; 

-- Ex6 Selecione apenas o homem que tem a maior altura do Brasil: 

select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

-- Ex7 Mostre a média de peso entre os gafanhotos:

select avg(peso) from gafanhotos;

-- Ex8 Mostre a mulher com menor peso que nasceu entre 01/jan/1990 e 31/dez/2000 e não é Brasileira:

select min(peso) from gafanhotos where sexo = 'F' and nascimento between '1990-01-01' and '2000-12-31' and nacionalidade != 'Brasil';

-- Ex9 Selecione os gafanhotos do sexo feminino e conte a altura de todos que tem mais de 1.90m:
 
select count(altura) from gafanhotos where sexo = 'F' and altura > '1.90';