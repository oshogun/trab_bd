-- Exercicio I.
-- Consulta seleciona o sexo e o nome das pessoas que trabalham nos projetos de código entre 3 e 5.
SELECT p.Sexo,p.NomePess from Pessoa p, ProjetoPessoa pp WHERE p.NumeroCartao = pp.NumeroCartao AND pp.CodProj BETWEEN 3 AND 5;

-- Exercicio II.
-- Consulta retorna o nome, email preferencial, código do curso e nome do curso de pessoas do sexo feminino ou que estejam matriculadas no curso de código 0010 e cujo codigo do curso esteja
-- entre 0010 e 0011. (variação com produto cartesiano).

SELECT DISTINCT p.NomePess, p.EmailPref, p.CodCurso, c.NomeCurso from Pessoa p, Curso c 
    WHERE ((p.CodCurso = c.CodCurso AND p.Sexo = 'F') OR (p.CodCurso = c.CodCurso AND c.CodCurso = 0010)) AND c.CodCurso BETWEEN 0010 AND 0011;

-- Variação com join
SELECT DISTINCT p.NomePess, p.EmailPref, p.CodCurso, c.NomeCurso from Pessoa p
    JOIN Curso c ON p.CodCurso = c.CodCurso 
    WHERE (p.Sexo = 'F' OR c.CodCurso = 0010) AND c.CodCurso BETWEEN 0010 AND 0011;

