SELECT E.ssn, E.pnome, T.essn, T.horas, T.pno FROM empregado AS E
JOIN trabalha_em AS t ON E.ssn = T.essn
WHERE T.pno = 30

--SELECT * FROM projeto