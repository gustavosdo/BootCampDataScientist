SELECT E.ssn, E.salario, E.dno, D.dnumero, D.dnome FROM empregado AS E
JOIN departamento AS D ON E.dno = D.dnumero