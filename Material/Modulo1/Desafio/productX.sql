SELECT E.ssn, T.essn, T.horas, T.pno FROM empregado AS E
JOIN trabalha_em AS t ON E.ssn = T.essn
WHERE T.horas > 10 AND T.pno = 1

--SELECT * FROM trabalha_em

--SELECT * FROM projeto
