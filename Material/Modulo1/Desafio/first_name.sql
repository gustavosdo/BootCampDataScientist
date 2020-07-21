SELECT E.ssn, E.pnome, D.essn, D.nome_dependente FROM empregado AS E
JOIN dependente as D on E.ssn = D.essn