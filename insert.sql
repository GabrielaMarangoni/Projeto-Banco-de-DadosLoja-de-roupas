INSERT INTO FUNCIONARIO(idFunc, cpf, nome, sexo, dataN, telefone,  salario) VALUES 
(001, '29856433767', 'Maria Eduarda Oliveira', 'F', '1995-09-17', 43998341755, 1260.00),
(002, '15478523648', 'Maria Fernanda Fonseca', 'F', '1991-12-14', 43996587412, 1260.00),
(003, '24132589614', 'Bruno Machado', 'M', '1990-06-15', 43987412254, 3568.80),
(004, '41245876542', 'Caio Eduardo Brolezi', 'M', '1998-09-03', 43985236647, 1260.00),
(005, '98547123546', 'Mario Franscisco da Silva', 'M', '1992-02-25', 43987997748, 1000.00),
(006, '12457336659', 'Adriana Castanha', 'F', '1985-06-13', 439965877989, 3660.90),
(007, '12499883572', 'Luciano Mendes', 'M', '1994-11-28', 43998742145, 1660.54),
(008, '75419966442', 'Anésio Camargo', 'M', '1990-09-15', 43987452100, 3560.54),
(009, '32876599441', 'Marcos Henrique Malaquias', 'M', '1987-05-17', 43998349899, 1660.54),
(010, '52489933446', 'Maria Gabriela Martins', 'F', '1985-12-01', 43998355997, 1660.54),
(011, '12457888747', 'Julia Gomes', 'F', '1995-09-19', 43986583254, 1000.00),
(012, '32457888757', 'Ana Maria Rubo', 'F', '1991-09-12', 43986589987,1660.54 ),
(013, '22457888747', 'Mariana Andrade', 'F', '1980-11-09', 43986500000,1660.54),
(014, '19985488747', 'Bianca Voltz', 'F', '1985-01-09', 43978954785, 3568.80),
(015, '03258745747', 'Lucas Henrique Balbino', 'M', '1990-09-09', 439785412568, 3568.80),
(016, '12459998750', 'Gabriel Henrique Oliveia', 'M', '1990-06-06', 43999987457, 3568.80),
(017, '19987888747', 'João Vitor Ferreira', 'M', '1992-09-08', 43988887745, 3568.80),
(018, '12457558747', 'Pamela Loquete', 'F', '1995-03-12', 43988997745, 3568.80),
(019, '12450008747', 'Isabel Maria Machado de Oliveira', 'F', '1997-05-23', 43988740201, 3568.80),
(020, '98747888747', 'Francisca Fonseca Gomes', 'F', '1998-07-25', 43999999584, 3568.80);

INSERT INTO ADM(id) VALUES
(003), (006), (008), (014), (015), (016), (017), (018), (019), (020);

INSERT INTO VENDEDOR(id, comissão, nivelDoVendedor, tempoDeServiço) VALUES
(001, 500.25, 'Junior', '1 ano'),
(002, 200.14, 'Junior', '3 meses'),
(004, 0.00, 'Junior', '5 meses'),
(005, 5.00, 'Estagiário', '1 mês'),
(007, 600, 'Contratado', '2anos'),
(009, 45.76, 'Contratado', '1 ano e 4 meses'),
(010, 34.12, 'Contratado', '3 anos'),
(011, 30.87, 'Estagiário', '2 meses'),
(012, 100.00, 'Contratado', '4 anos'),
(013, 99.87, 'Contratado', '2anos e 4 meses');

INSERT INTO FORNECEDOR( idFornecedor, cnpj,	nome, telefone) VALUES 
(000, 98765434523123, 'Juares da Silva', 16987569933),
(100, 89874524589147, 'Osmar Pereira', 65988074598),
(200, 87452889878568, 'André Alcantara', 149887745862),
(300, 02154879568010, 'Gabriel Barboza', 44995587454),
(400, 21457856587000, 'Douglas Menusi', 43987451422),
(500, 32154785589968, 'Márcia Alexandre Ferreira Gomes', 11987896584),
(600, 99988745142500, 'Anésia Francisca Sousa', 12996633256),
(700, 11114750036599, 'Amanda Cardoso', 43988899600),
(800, 99996300120304, 'Hugo Mognon', 44989897001),
(900, 01243258745000, 'Paulo Ricardo', 66987800231);

INSERT INTO COMPRA(idCompra, idFornecedor, idADM, dataCompra, precoT) VALUES 
(000, 500, 014, '2019-12-12', 9999.00),
(111, 800, 003, '2020-01-10', 1826.01),
(222, 100, 020, '2020-02-11', 200.00),
(333, 200, 019, '2019-11-30', 345.40),
(444, 000, 018, '2020-07-27', 1060.00),
(555, 300, 017, '2018-01-05', 505.6),
(666, 400, 006, '2019-08-18', 1019.8),
(777, 400, 006, '2020-08-16', 3500.00),
(888, 600, 008, '2018-09-29', 628.12),
(999, 900, 008, '2017-12-09', 1150.00),
(1000, 900, 008, '2019-12-23', 96.70);

INSERT INTO CLIENTE(idCliente, nome, sexo, dataNasc, telefone) VALUES
(001, 'Gabriela Marangoni', 'F', '1998-08-18', 43988079876),
(002, 'Giovana Radigonda', 'F', '2000-01-17', 43988675423),
(003, 'Guilherme Camargo', 'M', '1997-05-24', 43988435687),
(004, 'Maria Aparecida', 'F', '1986-04-23', 66996329612),
(005, 'Ernesto Brolezi', 'M', '1976-08-20', 16996541200),
(006, 'Osvaldo Oliveira', 'M', '1990-10-10', 65989541247),
(007, 'Lucilene Camargo', 'F', '1979-12-09', 43988547120),
(008, 'Helena Rubo', 'F', '1990-11-30', 11985410033),
(009, 'Leticia Gomes', 'F', '1994-09-23', 169880011220),
(010, 'Gustavo Henrique Borges', 'M', '1990-12-27', 449885501200),
(011, 'Milena Basso', 'F', '1997-04-19', 65999963211),
(012, 'Lucia Maria Fonseca', 'F', '1990-01-12', 66996541233),
(013, 'Lucivane Helena Malaquias', 'F', '1995-03-30', 65987457788),
(019, 'Yaissa Alexandre Ricardo', 'F', '1992-09-16', 44987589966),
(014, 'Alex Montenegro', 'M', '1990-09-13', 449658745214),
(015, 'Juliet Capoleto', 'F', '1987-12-12', 16985471100),
(016, 'Romeo Montes', 'M', '1990-08-31', 44988550000),
(017, 'Julia da Silva', 'F', '1998-09-12', 44988741254),
(018, 'Gleici Barzoto', 'F', '1991-03-02', 65988547889),
(020, 'Juliana Cintra', 'F', '1997-09-08', 11988995548);

INSERT INTO  CLIJURIDICO (id, cnpj, razaoSocial, siteEmpresa) VALUES
(001, '11164357654665', 'Aplicativos', 'www.pecajaseuapp.com.br'),
(002, '00000098765432', 'Africa', 'www.ajudeafrica.com.br'),
(003, '11212123490098', 'Agua', 'www.paguesuaaguaemdia.com.br'),
(004, '98764357654665', 'Em prol da Creche', 'www.creche.com.br'),
(005, '22231233212342', 'Economia de energia', 'www.saibacomoeconomizar.com'),
(006, '32339099987767', 'Salve vidas', 'www.salvevidas.com.br'),
(007, '87878673627687', 'Salve a Amazonia', 'www.amazonia.com'),
(008, '98987764546788', 'Salve os golfinhos', 'www.golfinhos.com.br'),
(009, '65656643311111', 'Salve voce de voce', 'www.pecaajuda.com.br'),
(010, '34300009987666', 'Agricultura', 'www.agri.com');

INSERT INTO CLIFISICO (id, apelido, cpf, email) VALUES
(011, 'Mili', '87532212235', 'mibasso@hotmail.com'),
(012, 'Lulu', '87876766765', 'lumaria@gmail.com'),
(013, 'Hele', '23232090909', 'helemalaquias@gmail.com'),
(014, 'Monte', '76786767556', 'montealex@hotmail.com'),
(015, 'Juh', '87652522222', 'capoleto@hotmail.com'),
(016, 'Rô', '21478878512', 'romeo@gmail.com'),
(017, 'Juju', '12300099876', 'silvajulia@hotmail.com'),
(018, 'Barzoto', '12003333698', 'barzoto@hotmail.com'),
(019, 'Yaya', '09878909998', 'alexandreyaissa@hotmail.com'),
(020, 'Juh', '09872675650', 'ju@hotmail.com');

INSERT INTO VENDA (idVenda, idFun, idCli, preçoT, dataVenda) VALUES
(000, 011 , 004, 99.99, '2020-02-03'),
(111, 001, 001, 40.00, '2020-10-20'),
(222, 002, 001, 54.54, '2019-01-03'),
(333, 010, 013, 401.09, '2020-10-04'), 
(444, 011, 020, 171.12, '2020-09-10'),
(555, 012, 018, 140.00, '2020-09-12'),
(666, 009, 009, 230.00, '2019-12-23'),
(777, 005, 002, 120.99, '2020-10-01'),
(888, 013, 011, 104.54, '2020-01-17'),
(999, 007, 016, 70.00, '2020-02-14');

INSERT INTO CONDICIONAL (idCond, idCli, qtde, descricao, preco) VALUES 
(000, 005, 1, 'Blusa Top',  34.54),
(111, 007, 9, '1 vestidos, 4 saias, 3 blusas, 1 shorts', 689.99),
(222, 001, 4, '4 macacão Farm, 1 saia pink', 709.34),
(333, 013, 1, 'Calça', 101.12), 
(444, 020, 1, 'Blusa', 50.99),
(555, 018, 2, 'Calça Farm', 212.00 ),
(666, 009, 1, 'Vestido', 99.99),
(777, 002, 1, 'Blusa básica', 20.00),
(888, 011, 1, 'Vestido Farm', 202.89),
(999, 016, 5, '2 vestido farm, 3 calças farm, 1 blusa, 1 saia pink, 1 saia', 865.98),
(1000, 005, 1, 'Saia Pink', 19.34);


INSERT INTO  PECA (descricao, qtdePeca, preco) VALUES 
('Vestido', 100, 99.99),
('Vestido Farm', 9, 202.89),
('Blusa básica', 10, 20.00),
('Blusa Top', 10, 34.54),
('Calça Farm', 10, 106.00),
('Calça', 5, 101.12),
('Blusa', 20, 50.99),
('Saia', 50, 70.00), 
('Shorts', 4, 157.03),
('Macacão Farm', 5, 230.00),
('Saia Pink', 5, 19.34);

INSERT INTO COMPRA_PECA (idC, qtde, descricao) VALUES
(000, 100, 'Vestido'),
(111, 9, 'Vestido Farm'),
(222, 10, 'Blusa básica'),
(333, 10, 'Blusa Top' ),
(444, 10, 'Calça Farm'),
(555, 5, 'Calça'),
(666, 20, 'Blusa'),
(777, 50, 'Saia'),
(888, 4, 'Shorts'),
(999, 5, 'Macacão Farm'),
(1000, 5, 'Saia Pink');

INSERT INTO PECA_CONDICIONAL (id, qtde, descricao) VALUES 
(000, 1, 'Blusa Top'),
(111, 1, 'Vestido'),
(111, 4, 'Saia'),
(111, 3, 'Blusa'),
(111, 1, 'Shorts'),
(222, 4, 'Macacão Farm'),
(222, 1, 'Saia Pink'),
(333, 1, 'Calça' ),
(444, 1, 'Blusa'),
(555, 2, 'Calça Farm'),
(666, 1, 'Vestido'),
(777, 1, 'Blusa básica'),
(888, 1, 'Vestido Farm'),
(999, 2, 'Macacão Farm'),
(999, 3, 'Calça Farm'),
(999, 1, 'Blusa'),
(999, 1, 'Saia Pink'),
(999, 1, 'Saia'),
(1000, 1, 'Saia Pink');

INSERT INTO VENDA_PECA(idV, qtde, descricao) VALUES
(000, 1, 'Vestido'),
(111, 2, 'Blusa básica'), 
(222, 1, 'Blusa básica'), 
(222, 1, 'Blusa Top'),
(333, 3, 'Vestido'),
(333, 1, 'Calça'),
(444, 1, 'Calça'),
(444, 1, 'Saia'),
(555, 2, 'Saia'),
(666, 1, 'Macacão Farm'),
(777, 1, 'Blusa'),
(777, 1, 'Saia'),
(888, 1, 'Blusa Top'),
(888, 1, 'Saia'),
(999, 1, 'Saia');