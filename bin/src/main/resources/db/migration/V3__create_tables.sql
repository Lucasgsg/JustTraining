CREATE TABLE cr (
	id	BIGINT auto_increment NOT NULL,
	nome	VARCHAR (250),
	descricao	VARCHAR (250),
	PRIMARY KEY (id)
);

CREATE TABLE localidade (
	id	BIGINT auto_increment NOT NULL,
	estacao	VARCHAR (250),
	rua VARCHAR(250),
	nro	BIGINT,
	bairro	VARCHAR (250),
	PRIMARY KEY (id)
);

CREATE TABLE condutor (
    cnh	BIGINT	NOT NULL UNIQUE,
    venc_cnh	VARCHAR (250),
    categ_cnh	VARCHAR (250),
    tipo_user	VARCHAR (250),
    nome	VARCHAR (250),
    matricula	BIGINT,
    email	VARCHAR (250),
    tel	VARCHAR (250),
    ramal	VARCHAR (250),
    cr_id	BIGINT,
    PRIMARY KEY (cnh),
    FOREIGN KEY (cr_id) REFERENCES cr(id)
);

CREATE TABLE veiculo (
	id	BIGINT auto_increment NOT NULL,
	tipo_veiculo	VARCHAR (250),
	marca	VARCHAR (250),
	modelo	VARCHAR (250),
	cor	VARCHAR (250),
	placa	VARCHAR (250) UNIQUE,
        placa_uf    VARCHAR(250),
	placa_cid	VARCHAR (250),
	localidade_id	BIGINT,
	PRIMARY KEY (id),
	FOREIGN KEY (localidade_id) REFERENCES localidade(id)
);

INSERT INTO cr VALUES
	(1,'ACD','ASSESSORIA DE CANAIS DIGITAIS'),
	(2,'AER','ASSESSORIA DE EXPANSAO DE REDES'),
	(3,'AJU','ASSESSORIA JURIDICA'),
	(4,'AMC','ASSESSORIA COMUNICACAO MARCA E SUSTENTABILIDADE'),
	(5,'APNR','ASSESSORIA DE PARCERIAS DE NOVAS REDES'),
	(6,'ARI','ASSESSORIA RELACOES COM INVESTIDORES E CAPTACOES'),
	(7,'ARMVN','ASSESSORIA DE RELACOES MERCADO REGIAO VENDAS NORTE'),
	(8,'ARMVS','ASSESSORIA DE RELACOES MERCADO REGIAO VENDAS SUL'),
	(9,'ASR','ASSESSORIA REGULATORIA'),
	(10,'ATP','ASSESSORIA DE TIC E PARCERIAS'),
	(11,'BRAIN','BRAIN'),
	(12,'CAC','COORD DE APLICACOES CORPORATIVAS'),
	(13,'CAF','COORD FATURAMENTO'),
	(14,'CAP','COORD DE APLICACOES DE PLATAFORMAS'),
	(15,'CAX','COORD DE APLICACOES DE CLIENTES'),
	(16,'CCE','COORD CULTURA E ENGAJAMENTO'),
	(17,'CCM','COORD CUSTO MIDIA'),
	(18,'CDI','COORD DISPONIBILIDADE DE INFRAESTUTURA'),
	(19,'CEI','COORD DE ENGENHARIA DE INFRAESTUTURA'),
	(20,'CER','COORD EXCELENCIA EM RELACIONAMENTO'),
	(21,'CGV','COORD GOVERNANCA E GESTAO DE VENDAS'),
	(22,'CGVA','COORD DE GESTAO VAREJO'),
	(23,'CIR','COORD DE IMPLANTACAO DE REDES'),
	(24,'CLO','COORD LOGISTICA'),
	(25,'CMC','COORD MIDIA DE CONSULTA'),
	(26,'CMCA','COORD MARKETING CORPORATIVO E ATACADO'),
	(27,'CMM','COORD MKT MPE'),
	(28,'CMV','COORD MARKETING VAREJO'),
	(29,'CNI','COORD NEGOCIOS INTERCONEXAO'),
	(30,'CNO','COORD NEGOCIOS OPERADORAS'),
	(31,'CO ULA','COORD OPERACAO UBERLANDIA'),
	(32,'COC','COORD OPERACAO DE CLIENTE CENTRO'),
	(33,'COCT','COORD OPERACOES DE CLIENTES TIC'),
	(34,'COL','COORD OPERACOES DE CLIENTE LESTE'),
	(35,'CON','COORD OPERACOES DE CLIENTE NORDESTE'),
	(36,'COR','COORD OPERACOES E REDES'),
	(37,'COS','COORD OPERACOES DE CLIENTE SUL'),
	(38,'CPF','COORD PLANEJAMENTO FINANCEIRO'),
	(39,'CPI','COORD DE PLANEJAMENTO INTEGRADO'),
	(40,'CPP','COORD PRODUTOS E PARCERIAS'),
	(41,'CPQ','COORD PROCESSOS E QUALIDADE'),
	(42,'CRC','COORD GESTAO DE RISCOS E CONTROLES INTERNOS'),
	(43,'CRCOE','COORD REG CENTRO-OESTE'),
	(44,'CRE','COORD RELACIONAMENTO EMPRESAS'),
	(45,'CRFOR','COORD REG FORTALEZA'),
	(46,'CRMLE','COORD REG MINAS LESTE'),
	(47,'CRMOE','COORD REG MINAS OESTE'),
	(48,'CRPSC','COORD REG PARANA E SANTA CATARINA'),
	(49,'CRRJO','COORD REG RIO DE JANEIRO'),
	(50,'CRRSU','COORD REG RIO GRANDE DO SUL'),
	(51,'CRSPC','COORD REG SAO PAULO CENTRO'),
	(52,'CRSPM','COORD REG SAO PAULO METRO'),
	(53,'CRSPN','COORD REG SAO PAULO NORTE'),
	(54,'CRV','COORD RELACIONAMENTO VAREJO '),
	(55,'CSOC','COORD SUPORTE OPERACOES CLIENTES'),
	(56,'CTH','COORD TALENTOS HUMANOS'),
	(57,'CTT','COORD DE TECNOLOGIA TIC'),
	(58,'CVC','COORD DE VENDAS VAREJO CENTRO'),
	(59,'CVN','COORD VENDAS VAREJO NORTE'),
	(60,'CVS','COORD VENDAS VAREJO SUL'),
	(61,'DAS','DIR DE APLICACOES E SERVICOS'),
	(62,'DEF','DIR FINANCEIRA'),
	(63,'DEM','DIR EMPRESAS E MPE'),
	(64,'DER','DIR ESTRATEGIA E REGULATORIO'),
	(65,'DINFRA','DIR DE INFRAESTRUTURA'),
	(66,'DMKT','DIR DE MARKETING'),
	(67,'DNA','DIR NEGOCIOS ATACADO'),
	(68,'DNV','DIR DE NEGOCIOS VAREJO'),
	(69,'DOB','DOB - DIRET. OPERACOES BRAIN'),
	(70,'DOC','DIRETORIA DE OPERACOES DE CLIENTES'),
	(71,'DRC','DIRETORIA GESTAO RELACIONAMENTO COM CLIENTE'),
	(72,'DRI','DIRETORIA DE RELACOES COM INVESTIDORES'),
	(73,'DRNOE','DIR REG NORTE OESTE'),
	(74,'DRSLE','DIR REG SUL LESTE'),
	(75,'DTD','DIR PROJETO DE TRANSFORMACAO DIGITAL'),
	(76,'DTH','DIR TALENTOS HUMANOS'),
	(77,'DTI','DIR DE TECNOLOGIA'),
	(78,'DTR','DIR DE TECNOLOGIA E REDES'),
	(79,'DVPN','DIR VICE PRESIDENCIA DE NEGOCIOS'),
	(80,'DVV','DIR VENDAS VAREJO'),
	(81,'PMO','ASSESSORIA PMO'),
        (82,'PRE','PRESIDENCIA EXECUTIVA'),    
        (83,'NENHUM','NENHUM');
	

INSERT INTO localidade VALUE
    (1,'ULA-CENTRO ADMINISTRATIVO','R JOSE ALVES GARCIA',415,'BRASIL'),
    (2,'ULA-CD LOGISTICO','AV ANTONIO THOMAZ F RESENDE',3023,'INDUSTRIAL'),
    (3,'ULA-CRV','R RIO GRANDE DO NORTE',3260,'UMUARAMA'),
    (4,'ULA-PARQUE DE ANTENAS','R BRAGA',1,'GRANJA MARILEUSA'),
    (5,'ULA-CDI','AV JOSE ANDRAUS GASSANI',4901,'INDUSTRIAL'),
    (6,'URA-ARQUELAU','AV OLIMPIO JACINTO SILVA',3,'VILA ARQUELAU'),
    (7,'FAC-OPERAÇÃO','R FLORIANO PEIXOTO',998,'CENTRO'),
    (8,'FAC-CENTRO','R MONS ROSA',1989,'CENTRO'),
    (9,'SQB-CENTRO','PC SETE DE SETEMBRO',397,'CENTRO'),
    (10,'SPO-QUATA','R QUATA',807,'VILA OLIMPIA'),
    (11,'IUB-CENTRO (01)','R PE FELIX',1,'CENTRO'),
    (12,'IUA-CENTRO (01)','R 24',945,'CENTRO');