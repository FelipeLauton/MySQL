-- Ex1 Monte uma lista com as profissoes dos gafanhotos e seus respectivos quatitativos:

select profissao, count(*) from gafanhotos
group by profissao;

-- Ex2 Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005? 

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

-- Ex3 Lista com gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nascionalidade:

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) >= '3';

-- Ex4 Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da media da altura de todos os gafanhotos:

select altura, count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);