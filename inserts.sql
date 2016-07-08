INSERT INTO Curso VALUES(0001, 'Administração');
INSERT INTO Curso VALUES(0010, 'Culinária');
INSERT INTO Curso VALUES(0011, 'Procrastinação');
INSERT INTO Curso VALUES(0100, 'Administração de Culinárias');
INSERT INTO Curso VALUES(0101, 'Procrastinação Administrativa');
INSERT INTO Curso VALUES(0110, 'Como deixar o trabalho de BD para a ultima hora');

INSERT INTO Pessoa VALUES (12345678, 'Ozzy Osbourne', 'M', 'ozzy@crazytrain.co.uk', 0001);
INSERT INTO Pessoa VALUES (87654321, 'Ronnie James DIO', 'M', 'dio@rainbow.co.uk', 0001);
INSERT INTO Pessoa VALUES (12243648, 'Goku', 'M', 'goku@arroz.com', 0011);
INSERT INTO Pessoa VALUES (11223344, 'Lucy', 'F', 'lucy@intheskywithdiamonds.com', 0011);
INSERT INTO Pessoa VALUES (12121341, 'Lisa Lisa', 'F', 'lisalisa@joestar.com', 0100);
INSERT INTO Pessoa VALUES (14100831, 'Guilherme Cardoso', 'M', 'guilherme.cmc@grad.ufsc.br', 0110);
INSERT INTO Pessoa VALUES (10203040, 'Jonathan Joestar', 'M', 'bestjojo@joestar.com', 0101);
INSERT INTO Pessoa VALUES (00110011, 'STAR PRATINUM', 'M', 'ORAORA@berbs.com', 0010);
INSERT INTO Pessoa VALUES (00112211, 'Mister Potato', 'M', 'chip@berbs.com', 0010);

INSERT INTO OutroEmail VALUES (12345678, 'alemao@ayyayyayy.com');
INSERT INTO OutroEmail VALUES (10203040, 'oh@noo.com');

INSERT INTO Projeto VALUES(00001, 'Inclusão Social do Batman', 2010, 2016, NULL);
INSERT INTO Projeto VALUES(00002, 'Inclusão Social do Robin', 2016, 2020, 00001);
INSERT INTO Projeto VALUES(00003, 'The Sign of the Southern Cross', 2016, 2020, NULL);
INSERT INTO Projeto VALUES(00004, 'Chidren of the Damned', 2001, 2004, NULL);
INSERT INTO Projeto VALUES(00005, 'Projeto Pimpolho', 2004, 2008, 00004);
INSERT INTO Projeto VALUES(00006, 'Projeto Pimpão', 2112, 2114, NULL);

INSERT INTO ProjetoPessoa VALUES(00005, 14100831, 'Líder');
INSERT INTO ProjetoPessoa VALUES(00005, 12243648, 'Bolsista');
INSERT INTO ProjetoPessoa VALUES(00005, 00112211, 'Membro');
INSERT INTO ProjetoPessoa VALUES(00002, 12345678, 'Líder');
INSERT INTO ProjetoPessoa VALUES(00002, 11223344, 'Membro');
INSERT INTO ProjetoPessoa VALUES(00001, 12121341, 'Líder');
INSERT INTO ProjetoPessoa VALUES(00001, 87654321, 'Membro');