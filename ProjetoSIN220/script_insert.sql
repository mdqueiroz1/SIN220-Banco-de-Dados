SET FOREIGN_KEY_CHECKS=0;

insert into instituto values
	('1', 'Agrarias'),
	('2', 'Engenharias'),
	('3', 'Biologicas'),
	('4', 'Exatas e da terra'),
	('5', 'Humanas'), 
	('6', 'Sociais e aplicadas'),
	('7', 'Saude');

insert into curso values
	('1','6','Administração'),
    ('3','1','Agronomia'),
    ('4','3','Ciências Biológicas'),
    ('5','3','Ciência de Alimentos'),
    ('6','2','Engenharia Civil'),
    ('7','2','Engenharia de Produção'),
    ('8','7','Nutrição'),
    ('9','4','Quimica'),
    ('10','4','Sistemas de Informação'),
    ('12','6','Ciências Contábeis');
  
insert into cargosDisponiveis values
	('1', 'Professor Especialista'),
    ('2', 'Professor Mestre'),
    ('3', 'Professor Doutor'),
    ('4', 'Assessor de Controle e Normas'),
    ('5', 'Assessor de Relações Institucionais '),
    ('6', 'Coordenador Adjunto do NIP'),
    ('7', 'Coordenador de Curso'),
    ('8', 'Coordenador do CAPSI – Apoio Psicopedagógico'),
    ('9', 'Coordenador de Apoio Didático-Pedagógico '),
    ('10', 'Diretor Acadêmico'),
    ('11', 'Diretor Financeiro'),
    ('12', 'Diretor Geral'),
    ('13', 'Analista de Sistema'),
    ('14', 'Analista Administrativo'),
    ('15', 'Assistente Administrativo'),
    ('16', 'Auxiliar Administrativo'),
    ('17', 'Auxiliar de Bibliotecário'),
    ('18', 'Bibliotecário'),
    ('19', 'Chefe de Seção de Serviços Gerais'),
    ('20', 'Contador'),
    ('21', 'Faxineiro'),
    ('22', 'Inspetor de Sala'),
    ('23', 'Jardineiro'),
    ('24', 'Operador de Sistemas de Informática'),
    ('25', 'Porteiro'),
    ('26', 'Recepcionista'),
    ('27', 'Secretaria Acadêmica');

insert into disciplina 
(`idDisciplina`,`nome_disciplina`,`creditos`,`carga_hora_teorica`,`carga_hora_pratica`,`semestreOfertado`)
values
('CRP199','Cálculo Diferencial e Integral','4','4',default,'3'),
('CRP297','Sociologia Geral','4','4',default,'3'),
('SIN110','Programação','6','4','2','3'),
('SIN130','Introdução a lógica','4','4',default,'1'),
('CRP192', 'Iniciação à Estatística','4','4',default,'3'),
('CRP298', 'Geometria Analítica e Álgebra Linear','4','4',default,'3'),
('SIN100', 'Tratamento e Análise de Dados/Informações','4','4', default,'2'),
('SIN101', 'Informática e Sociedade', '2','2',default,'2'),
('SIN211', 'Algoritmos e Estruturas de Dados','6','4','2','2'),
('CRP291', 'Inglês I','4','4',default,'3'),
('SIN132', 'Matemática Discreta','4',default,'4','1'),
('SIN141','Computação Orientada a Objetos','4','4',default,'2'),
('SIN222', 'Fundamentos de Sistemas de Informação','4','4',default,'2'),
('SIN251', 'Organização de Computadores','4','4',default,'2'),
('SIN142', 'Programação Concorrente e Distribuída','2','2',default,'2'),
('SIN213', 'Projeto de Algoritmos','6','4','2','2'),
('SIN220', 'Banco de Dados', '4','4',default,'2'),
('SIN221', 'Engenharia de Software I','4','4',default,'2'),
('SIN252', 'Arquitetura de Computadores','4','4',default,'2'),
('SIN131', 'Introdução à Teoria da Computação','4','4',default,'1'),
('SIN143', 'Laboratório de Programação','4','2','2','1'),
('SIN320', 'Laboratório de Banco de Dados','4','2','2','1'),
('SIN321', 'Engenharia de Software','4','4',default,'1'),
('SIN351', 'Sistemas Operacionais','4','4',default,'1'),
('ADE104', 'Teoria Geral da Administração', '4', '4',default,'3'),
('SIN322', 'Prática de Gerenciamento de Projetos', '2', '2', default,'2'),
('SIN323', 'Inteligência Artificial','4', '4', default,'2'),
('SIN352', 'Redes de Computadores', '6', '4', '2','2'),
('SIN421', 'Interação HumanoComputador', '4','4',default,'2'),
('ADE190', 'Introdução à Economia','4','4',default,'3'),
('ADE345', 'Comportamento Organizacional','4','4',default,'3'),
('SIN392', 'Introdução ao Processamento Digital de Imagens','4','4',default,'1'),
('SIN498', 'Trabalho de Conclusão de Curso I', '0', '0', '14','3'),
('ADE327', 'Empreendedorismo','4','4',default,'3'),
('CIC100', 'Contabilidade Geral', '4','4',default,'3'),
('SIN480', 'Pesquisa Operacional I','4','4',default,'2'),
('SIN496', 'Atividades Complementares','0','0','12','3'),
('SIN499', 'Trabalho de Conclusão de Curso II', '0','0','14','3');

insert into prerequisito
(`disciplina_idDisciplina`,`nomePrerequisito`)
values
( 'CRP192','CRP191, CRP199'),
( 'CRP298','CRP191, CRP199'),
( 'SIN211','SIN110'),
( 'SIN141','SIN110'),
( 'SIN251','SIN110'),
( 'SIN142','SIN141'),
( 'SIN213','SIN211 e SIN132'),
( 'SIN252','SIN251'),
( 'SIN143','SIN141 e SIN320'),
( 'SIN320','SIN220'),
( 'SIN321','SIN221'),
( 'SIN351','SIN142'),
( 'SIN131','SIN132'),
( 'SIN322','SIN221'),
( 'SIN323','SIN130'),
( 'SIN352','SIN351'),
( 'SIN421','SIN221'),
( 'SIN392','CRP199 e SIN110'),
( 'SIN498','SIN321'),
( 'SIN480','SIN110'),
( 'SIN499','SIN498');

insert into disciplina_has_curso
(`curso_idCurso`,`disciplina_idDisciplina`)
values
(10,'CRP199'),(9,'CRP199'),(7,'CRP199'),(6,'CRP199'),
(12,'CRP297'),(10,'CRP297'),(9,'CRP297'),(8,'CRP297'),(7,'CRP297'),(1,'CRP297'),
(1,'CRP192'),(3,'CRP192'),(4,'CRP192'),(5,'CRP192'),(6,'CRP192'),(7,'CRP192'),(9,'CRP192'),(10,'CRP192'),(12,'CRP192'),
(3,'CRP298'),(6,'CRP298'),(7,'CRP298'),(9,'CRP298'),(10,'CRP298'),
(10,'CRP291'),
(10,'ADE104'),(12,'ADE104'),(6,'ADE104'),(7,'ADE104'),
(10,'ADE190'),(12,'ADE190'),(6,'ADE190'),(7,'ADE190'),
(10,'ADE345'),
(10,'ADE327'),
(10,'CIC100'),(7,'CIC100'),(1,'CIC100'),
(10,'SIN110'),(7,'SIN110'),
(10,'SIN130'),
(10,'SIN100'),
(10,'SIN101'),
(10,'SIN132'),
(10,'SIN211'),(7,'SIN211'),
(10,'SIN141'),
(10,'SIN222'),
(10,'SIN251'),
(10,'SIN142'),
(10,'SIN213'),
(10,'SIN220'),
(10,'SIN221'),
(10,'SIN252'),
(10,'SIN131'),
(10,'SIN143'),
(10,'SIN320'),
(10,'SIN321'),
(10,'SIN351'),
(10,'SIN322'),
(10,'SIN323'),
(10,'SIN352'),
(10,'SIN421'),
(10,'SIN392'),
(10,'SIN498'),
(10,'SIN480'),
(10,'SIN496'),
(10,'SIN499');

insert into periodo
(`idPeriodo`,`periodo_idCurso`,`periodo_idDisciplina`,`anoPeriodo`)
values
(2,10,'SIN110',default),
(2,10,'SIN100',default),
(2,10,'SIN101',default),
(2,10,'SIN142',default),
(2,10,'SIN211',default),
(2,10,'SIN213',default),
(2,10,'SIN220',default),
(2,10,'SIN221',default),
(2,10,'SIN252',default),
(2,10,'SIN322',default),
(2,10,'SIN323',default),
(2,10,'SIN352',default),
(2,10,'SIN393',default),
(2,10,'SIN421',default),
(2,10,'SIN480',default),
(2,10,'SIN499',default),
(2,10,'SIN496',default),
(2,10,'SIN498',default);

insert into turma
(disciplina_idDisciplina,nrSala,tipo,dia,hora)
values
('SIN110','PVA101','T','2','19-21'),
('SIN110','PVA210','T','4','21-23'),
('SIN110','PVA226','P','5','19-21'),
('SIN211','PVA103','T','2','21-23'),
('SIN211','PVA113','T','5','19-21'),
('SIN213','PVA102','T','2','19-21'),
('SIN213','PVA114','T','4','21-23'),
('SIN220','PVA229','T','2','21-23'),
('SIN220','PVA229','T','6','19-21'),
('SIN221','PVA108','T','2','19-21'),
('SIN221','PVA108','T','5','21-23'),
('SIN252','PVA230','T','2','19-21'),
('SIN252','PVA230','T','5','19-21'),
('SIN323','PVA230','T','5','19-21'),
('SIN323','PVA230','T','6','19-21'),
('SIN352','PVA227','T','3','21-23'),
('SIN352','PVA227','T','5','21-23'),
('SIN352','PVA227','P','6','19-21'),
('SIN421','PVA230','T','2','19-21'),
('SIN421','PVA230','T','4','21-23'),
('CRP199','PVA113','T','2','19-21'),
('CRP199','PVA218','T','4','21-23'),
('CRP192','PVA103','T','3','19-21'),
('CRP192','PVA103','T','5','21-23'),
('CRP291','PVA202','T','2','19-21'),
('CRP291','PVA202','T','4','21-23'),
('CRP297','PVA210','T','3','21-23'),
('CRP297','PVA101','T','6','19-21'),
('CRP298','PVA103','T','2','19-21'),
('CRP298','PVA103','T','4','21-23'),
('ADE190','PVA212','T','3','19-21'),
('ADE190','PVA212','T','6','21-23'),
('ADE104','PVA108','T','2','21-23'),
('ADE104','PVA108','T','5','19-21'),
('ADE327','PVA228','T','2','21-23'),
('ADE327','PVA228','T','5','19-21');


insert into funcionario
(idFuncionario,nome,atua,area)
values
(default,'Adriana Zanella Martinhago','professor','Sistemas de Informação e Banco de Dados'),
(default,'Clausius Duque Gonçalves Reis','professor','Arquitetura de computadores'),
(default,'Guilherme de Castro Pena','professor','Algoritmos, Estruturas de Dados e Pesquisa Operacional'),
(default,'Guilherme Mendonça Freire','professor','Engenharia de Software'),
(default,'Íris Fabiana de Barcelos Tronto','professor','Engenharia de Software'),
(default,'João Fernando Mari','professor','Processamento de Imagem e Computação Gráfica'),
(default,'Liziane Santos Soares','professor','Engenharia de Software'),
(default,'Matheus Nohra Haddad','professor','Otimização Combinatória'),
(default,'Pablo Luiz Araújo Munhoz','professor','Pesquisa Operacional'),
(default,'Pedro Moises de Sousa','professor','Sistemas inteligentes, Mineração de dados'),
(default,'Rachel Carlos Duque Reis','professor','Programação de Computadores'),
(default,'Rodrigo Smarzaro da Silva','professor','Sistemas de Informação e Banco de Dados'),
(default,'Joelson Antônio dos Santos','professor','Aprendizado de Máquina'),
(default,'João Batista Ribeiro','professor','Programação de Computadores e Redes de Computadores'),
(default,'Larissa Ferreira Rodrigues','professor','Aprendizado de máquina e Processamento de Imagem'),
(default,'Leandro Henrique Furtado Pinto Silva','professor','Engenharia de Software'),
(default,'Henrique Peluzio','tecnico','Analista de sistemas'),
(default,'Seu João','tecnico','jardineiro');

insert into cargo
(funcionario_idFuncionario,cargo_idCargo)
values
(1,3),
(2,2),
(3,1),
(4,3),
(5,2),
(6,2),
(7,1),
(8,3),
(9,2),
(10,3),
(11,1),
(12,2),
(13,3),
(14,1),
(15,2),
(16,2),
(17,1);

insert into registro
(funcionario_idFuncionario,email,sexo,cpf,identidade,UFidentidade,orgaoExpedidor,
DataNascimento,cidade,cep,telefone)
values
(1,'adriana.martinhago@ufv.br','F','517077638','517077638','MG','SSP','1988/05/15',
'Rio Paranaiba','3844000','3438559325'),
(2,'clausius@ufv.br','M','674830714','243941985','MG','SSP','1989/02/19',
'Rio Paranaiba','3844000','3438265593'),
(3,'guilherme.pena@ufv.br','M','463851016','202021592','MG','SSP','1987/06/15',
'Rio Paranaiba','3844000','3438559356'),
(4,'guilhermemfreire@ufv.br','M','364845533','203094803','MG','SSP','1975/12/09',
'Rio Paranaiba','3844000','34385593530'),
(5,'irisbarcelos@ufv.br','F','650084502','468565152','MG','SSP','1972/8/21',
'Rio Paranaiba','3844000','3438559350'),
(6,'joaofmari@gmail.com','M','147327909','374797523','MG','SSP','1987/10/11',
'Rio Paranaiba','3844000','3438559350'),
(7,'liziane.soares@ufv.br','F','244873569','263898246','MG','SSP','1958/8/14',
'Rio Paranaiba','3844000','3438559350'),
(8,'mathaddad@gmail.com','M','193500281','500148958','MG','SSP','1985/12/22',
'Rio Paranaiba','3844000','3438559350'),
(9,'pablo.munhoz@ufv.br','M','926367135','183929913','MG','SSP',' 1974/2/2',
'Rio Paranaiba','3844000','3438559350'),
(10,'pedromoises@ufv.br','M','358075510','492982004','MG','SSP','1956/6/16',
'Rio Paranaiba','3844000','3438559350'),
(11,'rachel.reis@ufv.br','F','557542164','404749513','MG','SSP','1970/12/27',
'Rio Paranaiba','3844000','3438559350'),
(12,'smarzaro@ufv.br','M','804995909','376233643','MG','SSP','1970/10/6',
'Rio Paranaiba','3844000','3438559350'),
(13,'joelsonn.santos@gmail.com','M','656447916','260190731','MG','SSP','1970/5/29',
'Rio Paranaiba','3844000','343855935'),
(14,'joao42lbatista@gmail.com','M','047773202','444630442','MG','SSP','1988/2/25',
'Rio Paranaiba','3844000','343559350'),
(15,'larissa.f.rodrigues@ufv.br','F','265314921','469713823','MG','SSP','1981/5/24',
'Rio Paranaiba','3844000','343855935'),
(16,'leandro.pinto@ufv.br','M','560122233','355680543','MG','SSP','1970/8/11',
'Rio Paranaiba','3844000','438559350'),
(17,'hpeluzio@gmail.com','M','120013858','406869194','MG','SSP','1982/8/19',
'Rio Paranaiba','3844000','3438559350');


insert into aluno
(`matricula`,`nome`,`curso_idCurso`,`entrada_curso`,`escola2oGrau`)
values
(default,'Matheus Dias',10,2014,'Jose Hugo'),
(default,'José Costa',10,2012,'Don Vito'),
(default,'Vinícius Rodrigues',10,2017,'Carlo'),
(default,'Fernanda Maximus',10,2014,'Bonesera'),
(default,'Giovanna Marques',10,2015,'Luca'),
(default,'Nicolas Campos',10,2012,'Jack'),
(default,'Bernardo Boaventura',10,2015,'Tom Hagen'),
(default,'Emanuela Amaral',10,2011,'Sollozo'),
(default,'Agnes Menezzes',10,2015,'Tattaglia'),
(default,'Wilian Mello',10,2018,'Sonny');


insert into registro
(`aluno_matricula`,`email`,`sexo`,`cpf`,`identidade`,`UFidentidade`,`orgaoExpedidor`,
`DataNascimento`,`cidade`,`cep`,`telefone`)
values
 (1,'matheusd@ufv.br','M','11210428644','123456789','MG','SSP','1996/05/08',
 'Carmo do Paranaiba','38840000','99796233'),

(2,'josecosta@ufv.br','M','81905697406','483710027','MS','SSP','1990/12/07',
'Água Clara','79680000','9587632564'),

(3,'viniciusrodrigues@ufv.br','M','66612931108','467466269','PR','SSP','1999/06/07',
'Cornélio Procópio','86300000','439524581'),

(4,'fernandamaximus@ufv.br','F','20903006715','256115687','PA','SSP','1991/07/05',
'Belem','66999000','9198229682'),

(5,'giovanamarques@ufv.br','F','24360782977','110336793','PR','SSP','1997/08/01',
'Curitiba','82999000','419320289'),

(6,'nicolascampos@ufv.br','M','10627663427','337310026','PR','SSP','1991/11/07',
'Curitiba','82999000','4192700778'),
(7,'bernardoboaventura@ufv.br','M','98981048487','110336793','MS','SSP','1991/06/01',
'Água Clara','79680000','679185563'),
(8,'emanuela.amaral@ufv.br','F','56560716341','468238992','MG','SSP','1992/07/05',
'Belo Horizonte','30000000','3197759849'),
(9,'agnesmenezzes@ufv.br','F','38291391440','468238992','MG','SSP','1997/02/11',
'Belo Horizonte','30000000','319683413'),
(10,'heitormello@ufv.br','M','42671546351','294854459','PE','SSP','1994/06/06',
'Recife','50000000','819642161');