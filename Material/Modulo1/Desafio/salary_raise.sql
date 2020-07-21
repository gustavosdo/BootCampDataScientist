SELECT E.ssn, E.salario, T.essn, T.horas, T.pno FROM empregado AS E
JOIN trabalha_em AS t ON E.ssn = T.essn
WHERE T.pno = 1