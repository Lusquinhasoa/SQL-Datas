1 - Inclua suas próprias informações no departamento de tecnologia da empresa.  *
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (207,'Lucas','Alencar','alencar.lucas@momento.org','515.788.3677','2022-05-24',9,36000.00,NULL,6);
2 - A administração está sem funcionários. Inclua os outros elementos do seu grupo do demoday no departamento de administração. *
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (208,'Matheus','França','cardoso.franca@momento.org','451.645.9366','2022-05-28',3,15000.00,NULL,1);

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (209,'Matheus','Almeida','almeidamath@momento.org','154.444.2182','2022-05-28',3,15000.00,NULL,1);

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (210,'Camily','Silva','camilycruz.silva@momento.org','111.035.4698','2022-05-23',3,15000.00,NULL,1);

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (211,'Noelia','Nina','noelianina.n@momento.org','422.600.4685','2022-05-26',3,15000.00,NULL,1);

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (212,'Sara','Santos','sasa.santos@momento.org','544.611.7355','2022-05-24',3,15000.00,NULL,1);

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (213,'Rian','Paiva','paiva.rian@momento.org','065.446.9980','2022-05-22',3,15000.00,NULL,1);
3 - Agora diga, quantos funcionários temos ao total na empresa? *
SELECT COUNT(*) FROM `funcionarios` WHERE funcionario_id;
(total = 47)
4 - Quantos funcionários temos no departamento de finanças?  *
SELECT COUNT(*) FROM `funcionarios` WHERE departamento_id = 10;
(total = 6)
5 - Qual a média salarial do departamento de tecnologia?  *
SELECT AVG (salario) FROM `funcionarios` WHERE departamento_id = 6;
( média : R$ 10.800)
6 - Quanto o departamento de Transportes gasta em salários?  *
SELECT SUM(salario) from funcionarios WHERE departamento_id = 5;
(gasto: R$41.200)
7 - Um novo departamento foi criado. O departamento de inovações. Ele será locado no Brasil. Por favor, adicione-o no banco de dados.  *
INSERT INTO departamento(departamento_id,departamento_name,posicao_id) VALUES (12,'Inovações',1700);
8 - Novos Funcionários!
Três novos funcionários foram contratados para o departamento de inovações. Por favor, adicione-os: William Ferreira, casado com Inara Ferreira, possui um filho chamado Gabriel que tem 4 anos e adora brincar com cachorros. Ele será programador.Já a Fernanda Lima, que é casada com o Rodrigo, não possui filhos. Ela vai ocupar a posição de desenvolvedora.  Por último, a Gerente do departamento será Fabiana Raulino. Casada, duas filhas (Maya e Laura). 

O salário de todos eles será a média salarial dos departamentos de administração e finanças. 
Query com a resposta *
ALTER TABLE funcionarios ADD filhos int(200);
ALTER TABLE funcionarios ADD status_civil int(200);
ALTER table funcionarios ADD nome_companheiro int(200);
ALTER TABLE funcionarios ADD idade_filho int(200);

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,ocupacao_id,gerente_id,departamento_id,filhos,status_civil) VALUES (215,'Willian','Ferreira',9,NULL,6,'Gabriel','casado:Inara Ferreira');

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,ocupacao_id,gerente_id,departamento_id,filhos,status_civil) VALUES (216,'Fernanda','Lima',9,NULL,6,'não','casado:Rodrigo');

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,ocupacao_id,gerente_id,departamento_id,filhos,status_civil) VALUES (217,'Fabiana','Raulino',9,NULL,6,'Maya e Laura','Casada');

SELECT avg(salario) FROM `funcionarios` WHERE departamento_id = 1 UNION SELECT avg(salario) FROM `funcionarios` WHERE departamento_id = 10;

Média salarial: R$ 11.042,50
9 - Informe todas as regiões em que a empresa atua acompanhadas de seus países.  *
SELECT * from regiao INNER JOIN paises on regiao.regiao_id = paises.regiao_id;

Belgium
1
Europa

Switzerland
1
Europa

Germany
1
Europa

Denmark
1
Europa

France
1
Europa

Italy
1
Europa

Netherlands
1
Europa

United Kingdom
1
Europa

Americas
Argentina
2

Americas
BR
Brazil

Canada
2
Americas

Mexico
2
Americas

United States of America
2
Americas


Australia
3
Asia

China
3
Asia

HongKong
3
Asia

India
3
Asia

Japan
3
Asia

Singapore
3
Asia

Sula da Asia ou Africa
Egypt
4

Israel
4

Kuwait
4

Nigeria
4

Zambia
4
Zimbabwe
Filho de quem?
10 - Joe Sciarra é filho de quem? *
SELECT * FROM `funcionarios` WHERE primeiro_nome = 'Jose';
11 - Jose Manuel possui filhos?  *
SELECT (filhos) FROM `funcionarios` WHERE primeiro_nome = 'Jose';
12 - Qual região possui mais países?  *
SELECT COUNT(*) from paises WHERE regiao_id = 1
Europa 
13 - Exiba o nome cada funcionário acompanhado de seus dependentes.  *
SELECT funcionario_id,primeiro_nome, sobrenome, gerente_id from funcionarios;

Steven
King
NULL

Neena
Kochhar
100
	
Lex
De Haan
100

Alexander
Hunold
102

Bruce
Ernst
103

David
Austin
103

Valli
Pataballa
103
	
Diana
Lorentz
103

Nancy
Greenberg
101

Daniel
Faviet
108

John
Chen
108

Ismael
Sciarra
108
14 - Karen Partners possui um cônjuge?  *
SELECT (nome_companheiro) FROM `funcionarios` WHERE primeiro_nome = 'Karen';

não
15 - O ID da tabela de países não segue um padrão numérico. Na sua visão, qual o impacto disso no desenvolvimento do banco? *
Fica mais difícil de analisar os dados quando tivermos um sistema com diversas informações.
Parabéns!
Por ter feito um ótimo trabalho, você acaba de ser promovido. Você terá seu próprio departamento em algum dos países que a empresa já atua. 
16 - Escolha um país para se mudar. Qual seria esse país? Por que escolheria esse país? E o departamento. O que seria? Como seriam seus funcionários?  *
Canadá. Escolhia pelas oportunidade de emprego na área de desenvolvimento. Departamento de tecnologias backend. Teria funcionários em áreas de programação, gerente de informações e analistas de sistemas
17 - Atualize as informações na tabela para que seu departamento seja criado.  *
INSERT INTO departamento(departamento_id,departamento_name,posicao_id) VALUES (12,'Tecnologias Backend',1700)