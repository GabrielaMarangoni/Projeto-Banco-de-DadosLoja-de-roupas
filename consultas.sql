
-- 1 Encontre todos os id e os nomes dos vendedores que têm comissão acima de 100.00 reias ou que venderam no dia '2020-01-17'

SELECT DISTINCT V.id, F.nome
FROM VENDEDOR V, FUNCIONARIO F
WHERE V.comissao > 100.00
AND F.idFunc = V.id
UNION
SELECT Ve.idFun, Fu.nome
FROM VENDA Ve, VENDEDOR Ven, FUNCIONARIO Fu
WHERE Ve.dataVenda = '2020-01-17'
AND Ve.idFun = Ven.id
AND Fu.idFunc = Ven.id

-- 2 Encontre o vendedor com a maior comissão

SELECT F.nome
FROM FUNCIONARIO F, VENDEDOR V
WHERE F.idFunc = V.id 
AND V.comissao >= ALL ( SELECT V2.comissao
							FROM VENDEDOR V2)

-- 3 Encontre os vendedores cujas comissões sejam melhores que a de todo vendedor chamado 'Maria Gabriela Martins'

SELECT F.nome
FROM FUNCIONARIO F, VENDEDOR V
WHERE F.idFunc = V.id 
AND V.comissao > ALL (SELECT V2.comissao
						FROM VENDEDOR V2, FUNCIONARIO F2
						WHERE  F2.idFunc = V2.id 
                        AND F2.nome = 'Maria Gabriela Martins')
                        

-- 4 Encontre o nome de todos os vendedores que venderam todas as peças

SELECT F.nome
FROM FUNCIONARIO F
WHERE NOT EXISTS ( SELECT P.descricao
					FROM PECA P 
                    WHERE P.descricao  NOT IN (SELECT P.descricao
										FROM VENDA V1, VENDA_PECA VP, VENDEDOR V
                                        WHERE V.id = V1.idFun
                                        AND P.descricao = VP.descricao
                                        AND V.id = F.idFunc
                                        AND V1.idVenda = VP.idV))


-- 5 Encontre a idade do cliente mais velho que foi atendido pelo vendedor 'Luciano Mendes' 
SELECT C1.dataNasc 
FROM CLIENTE C1
HAVING C1.dataNasc >= ALL (
						SELECT C.dataNasc 
						FROM CLIENTE C, VENDEDOR V, VENDA V1, FUNCIONARIO F
						WHERE V.id = V1.idFun
						 AND V1.idCli = C.idCliente
						 AND F.nome = 'Luciano Mendes' )
                         
-- 6 Encontre os nomes dos vendedores 'Estagiario' que ganharam mais comissões que os vendedores 'Contratados' pela loja

SELECT F.nome
FROM FUNCIONARIO F, VENDEDOR V
WHERE V.nivelDoVendedor = 'Estágiario' 
AND V.id = F.idFunc
AND V.comissao > ALL ( SELECT V2.comissao
						FROM FUNCIONARIO F1, VENDEDOR V2
                        WHERE V2.nivelDoVendedor = 'Contratado'
                        AND V2.id = F1.idFunc )

-- 7 Encontre os nomes dos vendedores para os quais as vendas foram maior ou igual a 2 vendas
SELECT F1.nome
FROM	VENDEDOR V, VENDA D, FUNCIONARIO F1
WHERE	D.idFun = V.id
AND F1.idFunc = V.id
GROUP BY F1.nome
HAVING COUNT(v.id) >= 2

-- 8 Encontre um vendedor que não vendeu nada (não tem comissao)

SELECT DISTINCT 	F.nome
FROM 	FUNCIONARIO F, VENDEDOR V
WHERE V.id = F.idFunc	
AND V.id   IN	(SELECT	V1.id
						FROM VENDEDOR V1
						WHERE  V1.comissao = 00.00);
-- 9 Enconte o nome dos vendedores que venderam na mesma data

SELECT DISTINCT F.nome
FROM FUNCIONARIO F, VENDEDOR V
WHERE V.id = F.idFunc
AND V.id  in (SELECT V1.id
			FROM VENDEDOR V1, VENDEDOR V2, VENDA VE1, VENDA VE2
            WHERE  VE1.dataVenda = VE2.dataVenda
            AND V1.id <> V2.id
            AND V1.id = VE1.idFun
            AND V2.id = VE2.idFun)

-- 10 Para cada funcionario calcule a quantidade de vendas 

SELECT F.nome, COUNT(V.idVenda)
FROM FUNCIONARIO F, VENDA V, VENDEDOR R
WHERE F.idFunc = R.id
AND R.id = V.idFun
GROUP BY F.nome
HAVING COUNT(V.idVenda)


