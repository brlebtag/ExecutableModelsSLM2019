-- Adminer 4.7.6 PostgreSQL dump

DROP TABLE IF EXISTS "architectural_phases";
DROP SEQUENCE IF EXISTS architectural_phases_id_seq;
CREATE SEQUENCE architectural_phases_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."architectural_phases" (
    "id" integer DEFAULT nextval('architectural_phases_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "architectural_phases_name_key" UNIQUE ("name"),
    CONSTRAINT "architectural_phases_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "architectural_phases" ("id", "name") VALUES
(1,	'Analysis'),
(2,	'Evaluation'),
(3,	'Implementation'),
(4,	'Maintenance & Evolution'),
(5,	'Synthesis'),
(6,	'Not informed');

DROP TABLE IF EXISTS "architectural_styles";
DROP SEQUENCE IF EXISTS architectural_styles_id_seq;
CREATE SEQUENCE architectural_styles_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."architectural_styles" (
    "id" integer DEFAULT nextval('architectural_styles_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "architectural_styles_name_key" UNIQUE ("name"),
    CONSTRAINT "architectural_styles_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "benefits";
DROP SEQUENCE IF EXISTS benefits_id_seq;
CREATE SEQUENCE benefits_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."benefits" (
    "id" integer DEFAULT nextval('benefits_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "benefits_name_key" UNIQUE ("name"),
    CONSTRAINT "benefits_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "benefits" ("id", "name") VALUES
(1,	'Authors analysed and measured quality attributes'),
(2,	'Authors analysed different architectural configurations'),
(3,	'Authors realized predictions based on architectural analysis'),
(4,	'Authors analysed architectural impacts'),
(5,	'Authors obtained different insights about the architecture'),
(6,	'Authors analysed cost-benefit impacts'),
(7,	'Authors identified emergent behaviors'),
(8,	'Authors identified defects and problems in the architecture'),
(9,	'Not informed'),
(10,	'Authors identified the optimal architectural configuration'),
(11,	'Authors prescribed different behaviors of the architecture');

DROP TABLE IF EXISTS "contributions";
DROP SEQUENCE IF EXISTS contributions_id_seq;
CREATE SEQUENCE contributions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."contributions" (
    "id" integer DEFAULT nextval('contributions_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "contributions_name_key" UNIQUE ("name"),
    CONSTRAINT "contributions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "contributions" ("id", "name") VALUES
(1,	'Application'),
(2,	'Architecture'),
(3,	'Framework'),
(4,	'Method'),
(5,	'Methodology'),
(6,	'Metric'),
(7,	'Model'),
(8,	'Notation'),
(9,	'Process'),
(10,	'Simulation'),
(11,	'Technique'),
(12,	'Tool');

DROP TABLE IF EXISTS "domains";
DROP SEQUENCE IF EXISTS domains_id_seq;
CREATE SEQUENCE domains_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."domains" (
    "id" integer DEFAULT nextval('domains_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "domains_name_key" UNIQUE ("name"),
    CONSTRAINT "domains_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "domains" ("id", "name") VALUES
(1,	'Military'),
(2,	'Civil Construction'),
(3,	'Urban Planning'),
(5,	'Urban Mobility'),
(6,	'Space Exploration'),
(7,	'Air Transportation'),
(8,	'Alternative Fuels'),
(9,	'Public Safety'),
(11,	'Firefighting'),
(12,	'Traffic Control'),
(4,	'Academic'),
(10,	'Disaster Monitoring & Response');

DROP TABLE IF EXISTS "evidences";
DROP SEQUENCE IF EXISTS evidences_id_seq;
CREATE SEQUENCE evidences_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."evidences" (
    "id" integer DEFAULT nextval('evidences_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "evidences_name_key" UNIQUE ("name"),
    CONSTRAINT "evidences_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "evidences" ("id", "name") VALUES
(1,	'Empirical industrial'),
(2,	'Empirical laboratory'),
(3,	'Example'),
(4,	'Industrial evaluation'),
(5,	'Industrial example'),
(6,	'Set of examples'),
(7,	'Set of industrial examples'),
(8,	'None');

DROP TABLE IF EXISTS "execution_strategies";
DROP SEQUENCE IF EXISTS execution_strategies_id_seq;
CREATE SEQUENCE execution_strategies_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."execution_strategies" (
    "id" integer DEFAULT nextval('execution_strategies_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "execution_strategies_name_key" UNIQUE ("name"),
    CONSTRAINT "execution_strategies_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "execution_strategies" ("id", "name") VALUES
(1,	'Interpreted'),
(2,	'Interpreted by a virtual machine'),
(3,	'Translated directed to machine code'),
(4,	'Translated to a high level language via MDD and later compiled to machine code.'),
(5,	'Translated to a high level language via MDD and later interpreted by a virtual machine.'),
(6,	'Translated to a intermediate format (e.g. XML) that will be later loaded and executed.');

DROP TABLE IF EXISTS "futures";
DROP SEQUENCE IF EXISTS futures_id_seq;
CREATE SEQUENCE futures_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."futures" (
    "id" integer DEFAULT nextval('futures_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "futures_name_key" UNIQUE ("name"),
    CONSTRAINT "futures_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "goals";
DROP SEQUENCE IF EXISTS goals_id_seq;
CREATE SEQUENCE goals_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."goals" (
    "id" integer DEFAULT nextval('goals_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "goals_name_key" UNIQUE ("name"),
    CONSTRAINT "goals_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "goals" ("id", "name") VALUES
(1,	'Emergent Behavior Analysis'),
(2,	'Quality Attribute Analysis'),
(3,	'Impact Analysis'),
(4,	'Architectural Design'),
(5,	'Internal and External Dependency Analysis'),
(6,	'Improve Design Making Process'),
(8,	'Defects Identification and Prediction'),
(9,	'Architectural Configuration Optimization'),
(10,	'Architectural Synthesis'),
(11,	'Architectural Evolution'),
(12,	'Modeling System Behavior'),
(13,	'SoS Mission Evaluation'),
(7,	'Architectural Evaluation and Synthesis');

DROP TABLE IF EXISTS "notations";
DROP SEQUENCE IF EXISTS notations_id_seq;
CREATE SEQUENCE notations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."notations" (
    "id" integer DEFAULT nextval('notations_id_seq') NOT NULL,
    "name" character varying(255),
    "executable" boolean DEFAULT false,
    "formal" boolean DEFAULT false,
    "informal" boolean DEFAULT false,
    "semi_formal" boolean DEFAULT false,
    "graphical" boolean DEFAULT false,
    "textual" boolean DEFAULT false,
    "observation" text,
    CONSTRAINT "notations_name_key" UNIQUE ("name"),
    CONSTRAINT "notations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "notations" ("id", "name", "executable", "formal", "informal", "semi_formal", "graphical", "textual", "observation") VALUES
(1,	'Common ontology base (COB)',	'0',	'0',	'1',	'0',	'1',	'0',	NULL),
(2,	'Colored Petri Nets (CPN)',	'1',	'1',	'0',	'0',	'1',	'1',	NULL),
(3,	'Discrete Event System Specification (DEVS)',	'1',	'0',	'0',	'0',	'1',	'1',	NULL),
(4,	'SoSADL',	'0',	'1',	'0',	'0',	'1',	'1',	NULL),
(5,	'SysML',	'0',	'0',	'0',	'1',	'1',	'0',	NULL),
(6,	'Object Process Methodology (OPM)',	'1',	'1',	NULL,	NULL,	NULL,	'1',	'they are also executable. A correct OPM model constructed in OPCAT can be simulated by animating it, visually expressing how the system behaves over time to achieve its function at all detail levels.

(https://en.wikipedia.org/wiki/Object_Process_Methodology)'),
(8,	'ExtendSim notation',	'1',	'0',	'1',	'0',	'1',	'0',	'ExtendSim has ModL notation. Here, we are referring to the graphical notation only.'),
(9,	'SoaML',	'0',	'0',	'1',	'0',	'1',	'0',	'UML extension for SOA'),
(10,	'DoDAF DM2',	'0',	'1',	'0',	'0',	'1',	'0',	NULL),
(11,	'UML',	'0',	'0',	'1',	'0',	'1',	'0',	'It can be executed via xUML.'),
(12,	'DoDAF',	'0',	'0',	'1',	'0',	'1',	'0',	NULL),
(14,	'Not informed',	'0',	'0',	'0',	'0',	'0',	'0',	NULL),
(15,	'Unified Profile for DoDAF/MODAF (UPDM) ',	'0',	'0',	'1',	'0',	'1',	'0',	NULL),
(16,	'SoSSecML',	'0',	'0',	'1',	'0',	'1',	'0',	NULL),
(17,	'Platform Independent Component Modelling Language (PICML)',	'0',	'0',	'1',	'0',	'1',	'1',	'Component Behaviour Modelling Language (CBML) and Workload Modelling Language (WML)'),
(19,	'mKAOS',	'0',	'0',	'1',	'0',	'1',	'0',	NULL),
(20,	'Capabilities-Based DM2 (CBDM2)',	'0',	'1',	'0',	'0',	'1',	'0',	NULL),
(7,	'Operational Evaluation Modeling for Context Sensitive System (OpEMCSS)',	'1',	'1',	NULL,	NULL,	'1',	NULL,	'It is similar to DEVS. It is based on state machine. It seems it is only graphical notation extending ExtendSim tool.'),
(13,	'IDEA formalism',	'1',	'1',	NULL,	'1',	NULL,	NULL,	NULL),
(18,	'Deurema formalism',	'1',	'0',	'1',	NULL,	'1',	NULL,	NULL);

DROP TABLE IF EXISTS "quality_attributes";
DROP SEQUENCE IF EXISTS quality_attributes_id_seq;
CREATE SEQUENCE quality_attributes_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."quality_attributes" (
    "id" integer DEFAULT nextval('quality_attributes_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "quality_attributes_name_key" UNIQUE ("name"),
    CONSTRAINT "quality_attributes_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "quality_attributes" ("id", "name") VALUES
(1,	'Compatibility'),
(2,	'Functional Suitability'),
(5,	'Portability'),
(6,	'Reliability'),
(7,	'Security'),
(3,	'Maintainability'),
(4,	'Performance efficiency'),
(8,	'Not informed');

DROP TABLE IF EXISTS "research_methods";
DROP SEQUENCE IF EXISTS research_methods_id_seq;
CREATE SEQUENCE research_methods_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."research_methods" (
    "id" integer DEFAULT nextval('research_methods_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "research_methods_name_key" UNIQUE ("name"),
    CONSTRAINT "research_methods_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "research_methods" ("id", "name") VALUES
(1,	'Action Research'),
(2,	'Case Study'),
(3,	'Ethnography'),
(4,	'Experiment'),
(5,	'Mathematical Proof'),
(6,	'Prototype'),
(7,	'Simulation');

DROP TABLE IF EXISTS "sos_characteristics";
DROP SEQUENCE IF EXISTS sos_characteristics_id_seq;
CREATE SEQUENCE sos_characteristics_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."sos_characteristics" (
    "id" integer DEFAULT nextval('sos_characteristics_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "sos_characteristics_name_key" UNIQUE ("name"),
    CONSTRAINT "sos_characteristics_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "sos_characteristics" ("id", "name") VALUES
(1,	'Autonomy'),
(2,	'Belonging'),
(3,	'Connectivity'),
(4,	'Diversity'),
(5,	'Emergent Behavior'),
(6,	'Emerging'),
(7,	'Evolutionary Development'),
(8,	'Geographic Distribution'),
(9,	'Managerial Independence'),
(10,	'Operational Independence'),
(11,	'Not informed');

DROP TABLE IF EXISTS "sos_types";
DROP SEQUENCE IF EXISTS sos_types_id_seq;
CREATE SEQUENCE sos_types_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."sos_types" (
    "id" integer DEFAULT nextval('sos_types_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "sos_types_name_key" UNIQUE ("name"),
    CONSTRAINT "sos_types_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "sos_types" ("id", "name") VALUES
(1,	'Acknowledged'),
(2,	'Collaborative'),
(3,	'Directed'),
(4,	'General'),
(5,	'Not Informed'),
(6,	'Virtual');

DROP TABLE IF EXISTS "static_problems";
DROP SEQUENCE IF EXISTS static_problems_id_seq;
CREATE SEQUENCE static_problems_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."static_problems" (
    "id" integer DEFAULT nextval('static_problems_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "static_problems_name_key" UNIQUE ("name"),
    CONSTRAINT "static_problems_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "studies";
DROP SEQUENCE IF EXISTS studies_id_seq;
CREATE SEQUENCE studies_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."studies" (
    "id" integer DEFAULT nextval('studies_id_seq') NOT NULL,
    "code" character varying(255),
    "name" character varying(255),
    "year" integer,
    "authors" character varying(255),
    "bibtex" character varying(255),
    "summary" text,
    "vehicle_name" character varying(255),
    "vehicle_initials" character varying(255),
    "QA6" double precision,
    "QA5" double precision,
    "QA4" double precision,
    "QA3" double precision,
    "QA2" double precision,
    "QA1" double precision,
    "vehicle_type" character varying(255),
    CONSTRAINT "studies_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "studies" ("id", "code", "name", "year", "authors", "bibtex", "summary", "vehicle_name", "vehicle_initials", "QA6", "QA5", "QA4", "QA3", "QA2", "QA1", "vehicle_type") VALUES
(18,	's18',	'Towards Quality-Oriented Architecture: Integration in a Global Context',	2015,	'Spichkova et al.',	'Spichkova2015TowardsQualiOrientArch',	'Este estudo apresenta uma proposta para criar um ferramenta para simular sistemas cyber phyiscal em simuladores e assim testar diferentes configurações arquiteturais com o intuito de reduzir custos e encontrar defeitos na arquitetura.',	'European Conference on Software Architecture Workshops',	'ECSAW',	0,	0,	0,	0.5,	0.5,	1,	'Workshop'),
(8,	's8',	'Architecture Modeling of New C2 System of Joint Anti-Ship Combat',	2018,	'zhuang et al.',	'Zhuang2018ArchModelNewC2Sys',	'Este estudo apresenta a arquitetura do sistema de informação complexo militar chamado C2JAC. Também é apresentando uma simulação feito em rapsodia para avaliar se a arquitetura está funcionalmente correta.',	'International Conference on Algorithms, Computing and Systems',	'ICACS',	0,	0,	0.5,	0.5,	1,	1,	'Conference'),
(4,	'S4',	'Command and control for distributed lethality',	2019,	'Beery et al.',	'Beery2019CCforDistrLethality',	'Este estudo foi realizado pela marinha dos estados unidos para verificar através de simulação a robustez de três diferentes arquiteturas de comunicação entre constituintes de SoS. Foi possível descobrir que a arquitetura de rede distribuída C2 messages foi a melhor.',	'IEEE International Systems Conference',	'SysCon',	0,	0,	1,	1,	1,	1,	'Conference'),
(3,	's3',	'Dynamic-SoS: An Approach for the Simulation of Systems-of-Systems Dynamic Architectures',	2019,	'Manzano et al. ',	'Manzano2019DynamicSoS',	'Este estudo apresenta a ferramenta Dynamic-SoS que gerar modelos de simulação escritos em DEVSNL a partir de SoSADL. Para validar se a proposta estava funcional, foi validado a proposta em três estudos de caso: (i) Flood monitor (smart city); (ii) smart building; (iii) sistema de satélites brasileiro de meteorologia. A partir das simulações foi possível encontrar melhorias na arquitetura se novos constituentes fossem adicionados. Está técnica foca em realizar analises arquiteturais de SoS através de simulações.',	'The Computer Journal',	NULL,	1,	1,	1,	1,	1,	1,	'Journal'),
(6,	's6',	'Functionality evaluation of system of systems architecture based on extended influence diagrams',	2018,	'Zhang et al.',	'Zhang2018FuncEvalSoSArch',	'Este estudo começa apresentando uma revisão em metodologias para realizar avaliação do atributo de qualidade ''functional suitability'' para SoS. A solução escolhida entre as apresentadas é uma solução estatística que necessita de uns valores para calcular a probabilidade corretamente. Para achar esses valores o artigo desenvolve uma arquitetural ExM que irá ser simulada e analizada para estrair esses valores.',	'Journal of Systems Engineering and Electronics',	'JSEE',	1,	0,	1,	1,	1,	1,	'Journal'),
(14,	's14',	'The SosADL studio: An architecture development environment for software-intensive systems-of-systems',	2016,	'oquendo et al.',	'oquendo2016SoSADLStudio',	'Este estudo apresentou o SoSADL studio que combina varias ferramentas envolvidas no design arquitetural de um SoS. Simulações DEVS foram geradas a partir de SoSADL para avaliarem comportamentos emergentes e a própria arquitetura do SoS.',	'International Colloquium on Software-intensive Systems-of-Systems at European Conference on Software Architecture',	'SiSoS@ECSA',	0,	0,	0,	0,	1,	1,	'Colloquium'),
(12,	's12',	'Refining Missions to Architectures in Software-Intensive Systems-of-Systems',	2017,	'Silva et al.',	'Silva2017RefiningMissionsSISoS',	'Este estudo apresenta mKAOS e a ferramenta M2ARCH que converte modelos mKAOS em SoSADL e depois simula-os usando a ferrametna desenvolvida pelo profº Valdemar que converte SoSADL para DEVS para assim validar via simulação a arquitetura e observar comportamentos  emergentes e verificar usando o sistema de verificação do SoSADL que é baseado em pi-calculus.',	'International Workshop on Software Engineering for Systems-of-Systems and  Workshop on Distributed Software Development, Software Ecosystems and Systems-of-Systems',	'JSOS',	0,	0,	0,	0,	0,	1,	'Workshop'),
(11,	's11',	'Stimuli-SoS: a model-based approach to derive stimuli generators for simulations of systems-of-systems software architectures',	2017,	'Graciano Neto et al.',	'GracianoNeto2017StimuliSoS',	'Este estudo apresentou uma ferramenta que gera geradores de estímulos para DEVS a patir de descrições arquiteturais escritas em SoSADL.',	'Journal of the Brazilian Computer Society',	'JBCS',	1,	0.5,	0.5,	0.5,	1,	1,	'Journal'),
(15,	's15',	'A system-of-systems architecture-driven modeling method for combat system effectiveness simulation',	2016,	'Li et al.',	'Li2016SoSArchCombatSysEffectivSim',	'Este estudo apresenta a proposta de um método para descrever a arquitetura de Equipamento SoS usando diferentes ADL de dominio especifico, unificando elas através de uma Ontologia e a partir disso gerar modelos de simulação para analisar e avaliar a arquitetura e depois fazer também a geração de código. Está em fase totalmente inicial.',	'IEEE International Symposium on Systems Engineering',	'ISSE',	0,	0,	0,	0.5,	0.5,	1,	'Symposium'),
(19,	's19',	'SoS Architecture Alternatives Tradespace Modeling and Computable Experimentation: A Framework with System Engineering Thinking',	2015,	'Li et al.',	'Li2016SoSArchAltTradespaceModelCompExperim',	'Este estudo apresenta uma framework para avaliar a eficiencia de diferentes arquiteturas através da descrição desses modelos em OPM/DoDAF DM2 e gerando modelos de simulação MAS para estão avaliar qual arquitetura é mais eficiente.',	'International Conference on Computational Intelligence and Communication Networks',	'CICN',	0,	0,	0,	0.5,	0,	1,	'Conference'),
(7,	's7',	'Back-SoS: Towards a Model-Based Approach to Address Architectural Drift in Systems-of-Systems',	2018,	'Graciano Neto et al.',	'GracianoNeto2018BackSoS',	'Este estudo apresenta uma proposta para converter modelos de simulação escrito em DEVS de volta a descrições arquiteturais escritas em SoSADL.',	'Symposium on Applied Computing',	'SAC',	0,	0,	0,	0,	0,	1,	'Symposium'),
(10,	's10',	'SysML executable systems of system architecture definition: A working example',	2017,	'Dahmann et al.',	'Dahmann2017SysMLExMWorkingExample',	'Este estudo buscou mostrar a viabilidade do uso de modelos executáveis para representar arquiteturas SoS atráves de um exemplo de uma arquitetura de CDMaST (close kill chains).',	'IEEE International Systems Conference',	'SysCon',	0,	0,	0,	0.5,	0.5,	1,	'Conference'),
(23,	's23',	'A Smart House environment - The System of Systems approach to Model Driven Simulation of Building (house) Attributes',	2015,	'Peri\v{s}i\''{c} et al.',	'Perisic2015SmartHouseEnvironSoSApproachMDE',	'Este estudo apresentou um mecanismo para unir diferentes simuladores e uma ontologia universal para unir diferentes linguagens de modelagem de domínio especifico na área de construção civil para ser usado na analise de smart houses para estudar os atributos de qualidade deles.',	'International Workshop on Consumer Electronics',	'CE WS',	0,	0,	0.5,	1,	0.5,	1,	'Workshop'),
(1,	's1',	'Constituent System Design: A Software Architecture Approach',	2020,	'Teixeira et al.',	'Teixeira2020CSDesign',	'A partir de uma revisão informal da literatura, foi-se construído uma proposta de arquitetura de um constituinte de SoS que lida com mobilidade urbana. O estudo usou Architecturally significant requirements (ASR) para extrair os requisitos e projetar a arquitetura. Foi usado simulação para avaliar a arquitetura em diferentes configurações arquiteturais para ver se o grau de independência operacional desejado foi alcançado e assim validar a arquitetural. O formalismo usado foi o DEVS na ferrramenta MS4ME.',	'IEEE International Conference on Software Architecture Companion',	'ICSA-C',	0,	0,	1,	1,	1,	1,	'Conference'),
(30,	's30',	'Executable system architecting using systems modeling language in conjunction with colored Petri nets in a model-driven systems development process',	2012,	'Wang R. and Dagli C. H.',	'Wang2011ExcSysArchSysModelLangCPNMDE',	'Este estudo apresenta uma proposta de mapeamento de SysML para CPN e realiza uma conversão manual do mesmo. Esta proposta é uma arquitetura que visa o emprego de SysML e CPN para fazer analise e avaliação arquitetural. (parece que realmente daqui pra baixo só tem propostas de mapeamento)>',	'Systems Engineering Journal',	NULL,	0.5,	0,	1,	1,	1,	1,	'Journal'),
(29,	's29',	'Integrating Design and Runtime Variability Support into a System ADL',	2011,	'Ludwig et al.',	'Ludwig2011IntegraDesignRunTimeVariabSupportSysADL',	'Este trabalho apresenta uma nova notação(meta-modelo) e uma ferramenta que gera um ambiente para executar esse modelo. Os modelos são models@runtime do processo do SoS. Neles é possível especificar variações na arquitetura que serão executadas em tempo de execução. Foi usado uma ferramenta da microsoft para gerar a notação e para executar os processos de negócio. (muito interessante)',	'European Conference on Modelling Foundations and Applications',	'ECMFA',	0,	0,	0.5,	1,	1,	1,	'Conference'),
(21,	's21',	'On the Architecture-Driven Development of Software-Intensive Systems-of-Systems',	2015,	'Cavalcante E.',	'Cavalcante2015ArchDrivenDevSISoS',	'Este estudo apresenta uma proposta de doutorado que pretende extender o SoSADL para lidar com evolução arquitetural e junto com o uso de models@runtime  ajudar na evolução do SoS.',	'International Conference on Software Engineering',	'ICSE',	0,	0,	0,	0,	0,	1,	'Conference'),
(26,	's26',	'Demonstration of Model-Driven Performance Prediction of Distributed Real-Time Embedded Systems of Systems',	2013,	'Rieckmann et al.',	'Rieckmann2013DemonMDEPerformPredicSoS',	'Este estudo apresentou um ferramenta para integrar modelos executáveis definidos em  PICML (CBML e WML) que gera código C++ com modelos de performance para mensurar e visualizar a performance do SoS.',	'International Conference on Engineering of Complex Computer Systems',	'ICECCS',	0,	0,	0,	0.5,	0,	1,	'Conference'),
(20,	's20',	'OPM & color petri nets based executable system of systems architecting: A building block in FILA-SoS',	2015,	'Wang et al.',	'Wang2015OPMCPNbasedExSoSArch',	'Este trabalho apresentou o processo de converter OPM em modelos CPN. Aparentemente ida-e-volta embora não está claro. Com base nisso, os autores avaliaram uma SoS de reconhecimento e ataque para mensurar sua performance. Não foi apresentando quais ferramentas foram usadas.',	'IEEE International Systems Conference',	'SysCon',	0,	0,	1,	1,	1,	1,	'Conference'),
(5,	's5',	'Model-Based Engineering & Simulation of Software-Intensive Systems-of-Systems: Experience Report and Lessons Learned',	2019,	'Graciano Neto et al.',	'GracianoNeto2018MDEMSSoSLessonsLearned',	'Este estudo apresentou os diversos trabalhos que foram desenvolvido ao longo de 5 anos de pesquisas em SoS e ExM. O autor apresentou (i) uma tecnica para realizar avaliação arquitetural a través de modelos de simulação (DEVS) gerados a partir de uma descrição arquitetural (SoSADL); (iii) uma ferramenta para manter sincronizado os modelos de simulação gerado com a descrição arquitetural e um gerador de estímulos para as simulações. Na condução dos estudos, os autores obtiveram insights com relação a própria natureza do SoS e suas Missões.',	'European Conference on Software Architecture: Companion',	'ECSA',	0,	0,	0.5,	0,	0.5,	1,	'Workshop'),
(24,	's24',	'A model driven service engineering approach to system of systems',	2014,	'Hu et al.',	'Hu2014MDEApproachSoS',	'Este estudo apresentou um processo de desenvolvimento MDE de SoS. O exemplo explorado foi de um sistema de SoS de aeroporto. O processo baseia em 4 etapas: (i) analise dos objetivos estratégicos e táticos do SoS, (ii) Analise da arquitetura de negócio usando UML/SysML, (iii) Analise da arquitetura e do SOA via  usando UML/SysML e SoaML e por último (iv) geração de simulações em DEVS e dos códigos para web service a partir de UML/SysML e SoaML.',	'IEEE International Systems Conference',	'SysCon',	0,	0,	0.5,	1,	1,	1,	'Conference'),
(22,	's22',	'Modeling Collaborations in Adaptive Systems of Systems',	2015,	'W\"{a}tzoldt and Giese',	'Watzoldt2015ModelCollabAdapSoS',	'Este estudo apresentou a notação Deurema que expande a notação Eurema para representar coordenação de constituintes em um SoS adaptativo. A linguagem é interpretada pelo interpretador do Eurema. Foi apresentado dois exemplos, sendo o primeiro um básico discutindo coordenação teoricamente e o segundo em um exemplo prática de SoS de controle de tráficos e câmeras de segurança que se auto-adaptam.',	'European Conference on Software Architecture Workshops',	'ECSAW',	0,	0,	0.5,	0.5,	1,	1,	'Workshop'),
(32,	's32',	'Adding Executable Context to Executable Architectures: Shifting towards a Knowledge-Based Validation Paradigm for System-of-Systems Architectures',	2010,	'Garcia J. and Tolk A.',	'Garcia2010AddExContextExArch',	'Neste trabalho apresenta-se uma proposta de doutorado que visa criar uma federação de simulações usando DUNIP que é uma framework unificada que gera modelos DEVS a partir de DoDAF. O objetivo do autor é simular o sistema e o contexto que ele está inserido, ou seja, todos os sistemas externos a ele e a partir disso obter comportamentos emergentes e fazer mensurações das qualidades da arquitetura proposta.',	'Summer Computer Simulation Conference',	'SCSC',	0,	0,	0,	0.5,	1,	1,	'Conference'),
(28,	's28',	'A Method of WESoS Capability Assessment Based on DM2 and ABS',	2013,	'Li et al.',	'Li2013methodWESoSCapAssessBasedDM2ABS',	'Este estudo apresentou uma proposta de mapeamento entre CBDM2 (que é uma versão do DM2 mas com capability-based) para XML que depois será posteriormente carregado no SEAS que é um simulador baseado em agentes de simulação de guerra muito eficiente e poderoso que pode simular toda a campanha de guerra. (Parece que a partir daqui, só vai aparecer proposta de mapeando) (confirmar isso)',	'International Conference on Information Management, Innovation Management and Industrial Engineering',	'ICIII',	0,	0,	0,	1,	1,	1,	'Conference'),
(17,	's17',	'An Application of SMC to Continuous Validation of Heterogeneous Systems',	2016,	'Arnold et al.',	'Arnold2016AppSMCContValidHeterogeneous',	'Este trabalho apresenta uma nova cadeia de ferramentas que é composta por Rapsodia + Plamas e DESYRE. Os constituintes são modelados em UPDM. Este são depois convertidos em FMI que é um padrão da industriaria que permite integração com diversas outras ferramentas (como é apresentado no próprio artigo). Os requerimentos do SoS são especificados em uma notação formal. A partir dessas duas discrições, simulações são geradas para se obter o comportamento dos constituintes ao longo de diversas interações. Com base nesses resultados faz-se a verificação das propriedades formais do SoS. É um trabalho bem interessante, diga-se de passagem',	'EAI International Conference on Simulation Tools and Techniques',	'SIMUTOOLS',	0,	0,	1,	1,	1,	1,	'Conference'),
(16,	's16',	'Architecture-based simulation for system evaluation',	2016,	'Yousefi and Levis',	'Yousefi2016ArchSimSysEval',	'Este estudo é uma continuação dos estudos do profº Levi sobre modelos executáveis. Neste estudo eles apresentam uma metodologia de design de arquitetura na qual a arquitetura é desenvolvida usando UML e depois é convertida para Petri-nets. A arquitetura é avaliada/checada através do modelo executável para encontrar defeitos, no exemplo apresentado, situações de dead lock na arquitetura. A arquitetura apresentada é de um sistema de transporte áereo.',	'Summer Computer Simulation Conference',	'SCSC',	0,	0,	1,	1,	1,	1,	'Conference'),
(35,	's35',	'Modeling and simulation of net centric system of systems using systems modeling language and Colored Petri-nets: A demonstration using the Global Earth Observation System of Systems',	2008,	'Rao et al.',	'Rao2008MSNetCentricSoSMLCPN',	'Este trabalho apresenta um mapeamento manual entre SysML para CPN. Foi usando alguns diagramas e estabelecido o mapeamento para avaliar a arquitetura de um sistema geo-espacial de satélite.',	'Systems Engineering Journal',	NULL,	0,	0,	0,	1,	1,	1,	'Journal'),
(13,	's13',	'Towards Methodological Support for Secure Architectures of Software-Intensive Systems-of-Systems',	2016,	'hachem et al.',	'Hachem2016SecSISoS',	'Este estudo apresentou uma ADL chamada SoSSecML que é uma extensão de SysML para modelar segurança em SoS, mais especificamente ataques em cascata em SoS. Além disso, também apresenta uma ferramenta que converte modelos escritos em SoSSecML para JADE models. e que são executados na plataforma JADE.  A partir dos resultados da simulação, os arquitetos de segurança poderão ver se o SoS satisfaz as condições necessárias.',	'International Colloquium on Software-intensive Systems-of-Systems at European Conference on Software Architecture',	'SiSoS@ECSA',	0,	0,	0,	0,	0,	1,	'Colloquium'),
(34,	's34',	'Achieving DoDAF-Driven Simulations through Executable Architectures',	2009,	'Robbins',	'Robbins2009AchievingDoDADDrivenSimExcArch',	'Este estudo apresenta uma proposta de integrar Arquiteturais com M&S através do uso de técnicas de MDA. Discute bem teórico. Não apresenta nenhum mapeamento. Estágio bem inicial mesmo.',	'Spring Simulation Multiconference',	'SpringSim',	0,	0,	0,	1,	0,	1,	'Conference'),
(25,	's25',	'Agent-based modeling the emergent behavior of a system-of-systems',	2014,	'Hsu et al.',	'Hsu2014ABMEmergentBehavSoS',	'Este estudo fez uso de simulação de agentes para explorar comportamentos emergentes de SoS a um nível conceitual, tentando identificar as influencias dos comportamentos emergentes poderiam ter na arquitetura de Software. (Primeiro artigo a lidar com Comportamento emergente?)',	'INCOSE international symposium',	'INCOSE IS',	0,	0,	1,	1,	1,	1,	'Symposium'),
(33,	's33',	'An agent-based dynamic model for analysis of distributed space exploration architectures',	2009,	'Sindiy et al.',	'Sindiy2009ABMAnalsisDistSpaceExplorArch',	'Este estudo apresentou um estudo sobre diferentes arquiteturas de bases espaciais para exploração espacial. Foi usado ABS para simular essas diferentes arquiteturas e identificar: (i) comportamentos emergentes (ii) performance (iii) gastos (iv) robustes (v) sensibilidade.',	'The Journal of the Astronautical Sciences',	NULL,	0,	0,	1,	1,	1,	1,	'Journal'),
(31,	's31',	'Evaluation method of system-of-systems architecture using knowledge-based executable model',	2010,	'Xiong et al.',	'Xiong2010EvalMethodSoSArchKBExM',	'Este trabalho apresentou uma proposta para usar ExM na avaliação de performance juntamente com analises estáticas e conhecimento tácito. Os ExM são manualmente criados.',	'International Conference on Management Science & Engineering',	'ICMSEM',	0,	0,	1,	1,	1,	1,	'Conference'),
(27,	's27',	'A novel executable modeling approach for system-of-systems architecture',	2013,	'Ge et al.',	'Ge2013NovelExMApproachSoS',	'Apresenta um método onde é usado uma ontologia formal chamada DoDAF onde nela é definido o metamodelo das linguagens DoDAF e executable model languages. Usando alguma ferramenta de transformação de modelo, é possível gerar modelos executáveis a partir de outras notações, e junto com outras informações anexadas nessa transformação, pudesse fazer uma série de analises na arquitetura. Parece ser a primeira proposta que faz uso de ExM mas que tenha transformação automática de modelos. (surgimento da automatização das transformações de modelos?)',	'IEEE Systems Journal',	'ISJ',	0,	0,	1,	1,	1,	1,	'Journal'),
(9,	's9',	'An agent-based model for improved system of systems decision making in air transportation',	2018,	'Esmaeilzadeh et al.',	'Esmaeilzadeh2018ABMSoSAirTrans',	'Este trabalho apresenta um modelo de simulação baseado em agentes para testar diferentes configurações arquiteturais para serem usadas na tomada de decisão estratégicas em um SoS de controle de tráfico aereo. A simulação serve para ser tomado decisões e não para ser usado como tomador de decisão.',	'Systems Engineering Journal',	NULL,	1,	1,	1,	1,	1,	1,	'Journal'),
(2,	's2',	'Investigating emergent behavior caused by electric vehicles in the smart grid using co-simulation',	2019,	'Binder et al.',	'Binder2019InvestEmergBehavEletricVehicle',	'O autor apresentou um método que lia modelos em UML e convertia em código de simulação Python via MDA para simular diferentes carros elétricos abastecendo em um SoS Smart grid. A partir dos resultados de simulação, foi possível observar que ao se adicionar mais carros elétricos a grid elétrica houve um aumento no consumo elétrico durante o período matutino e que posteriormente se normalizou durante o período noturno. Isso pode indicar um problema para a arquitetura adotada.',	'Annual Conference System of Systems Engineering',	'SoSE',	0,	0,	0.5,	0.5,	1,	1,	'Conference');

DROP TABLE IF EXISTS "study_architectural_phase";
CREATE TABLE "public"."study_architectural_phase" (
    "study_id" integer NOT NULL,
    "architectural_phase_id" integer NOT NULL,
    CONSTRAINT "study_architectural_phase_pkey" PRIMARY KEY ("study_id", "architectural_phase_id"),
    CONSTRAINT "study_architectural_phase_architectural_phase_id_fkey" FOREIGN KEY (architectural_phase_id) REFERENCES architectural_phases(id) NOT DEFERRABLE,
    CONSTRAINT "study_architectural_phase_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_architectural_phase" ("study_id", "architectural_phase_id") VALUES
(23,	1),
(20,	1),
(20,	2),
(20,	4),
(7,	1),
(7,	2),
(7,	4),
(1,	2),
(1,	5),
(3,	1),
(3,	4),
(35,	1),
(35,	2),
(33,	1),
(33,	2),
(33,	4),
(25,	1),
(31,	1),
(31,	2),
(30,	1),
(30,	2),
(30,	4),
(28,	1),
(28,	4),
(24,	1),
(24,	2),
(24,	5),
(27,	1),
(16,	1),
(16,	2),
(16,	5),
(19,	2),
(15,	1),
(15,	2),
(15,	3),
(15,	5),
(6,	2),
(9,	1),
(9,	2),
(9,	4),
(4,	1),
(4,	2),
(2,	2),
(29,	1),
(29,	4),
(29,	5),
(14,	1),
(14,	2),
(14,	4),
(11,	1),
(18,	1),
(18,	2),
(8,	2),
(32,	1),
(32,	2),
(17,	2),
(34,	1),
(34,	2),
(13,	1),
(13,	2),
(13,	4),
(26,	2),
(26,	3),
(26,	5),
(22,	3),
(22,	4),
(21,	4),
(5,	1),
(5,	2),
(5,	4),
(10,	1),
(10,	2),
(8,	5),
(4,	5),
(3,	5),
(6,	5),
(12,	5),
(19,	5),
(11,	5),
(10,	5),
(14,	5),
(18,	5),
(27,	5),
(23,	5),
(30,	5),
(5,	5),
(20,	5),
(34,	5),
(28,	5),
(33,	5),
(17,	5),
(31,	5),
(35,	5),
(13,	5),
(9,	5),
(2,	5),
(12,	2),
(12,	1),
(3,	2),
(21,	5),
(22,	5),
(25,	5),
(32,	5),
(2,	1),
(1,	1),
(6,	1),
(8,	1),
(19,	1),
(21,	1),
(22,	1),
(26,	1),
(17,	1),
(7,	5),
(11,	2),
(21,	2),
(22,	2),
(23,	2),
(25,	2),
(27,	2),
(28,	2),
(29,	2);

DROP TABLE IF EXISTS "study_architectural_style";
CREATE TABLE "public"."study_architectural_style" (
    "study_id" integer NOT NULL,
    "architectural_style_id" integer NOT NULL,
    CONSTRAINT "study_architectural_style_pkey" PRIMARY KEY ("study_id", "architectural_style_id"),
    CONSTRAINT "study_architectural_style_architectural_style_id_fkey" FOREIGN KEY (architectural_style_id) REFERENCES architectural_styles(id) NOT DEFERRABLE,
    CONSTRAINT "study_architectural_style_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);


DROP TABLE IF EXISTS "study_benefit";
CREATE TABLE "public"."study_benefit" (
    "study_id" integer NOT NULL,
    "benefit_id" integer NOT NULL,
    CONSTRAINT "study_benefit_pkey" PRIMARY KEY ("study_id", "benefit_id"),
    CONSTRAINT "study_benefit_benefit_id_fkey" FOREIGN KEY (benefit_id) REFERENCES benefits(id) NOT DEFERRABLE,
    CONSTRAINT "study_benefit_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_benefit" ("study_id", "benefit_id") VALUES
(23,	1),
(20,	1),
(7,	9),
(1,	1),
(3,	2),
(3,	3),
(3,	4),
(35,	9),
(33,	2),
(33,	5),
(33,	6),
(33,	1),
(33,	10),
(25,	7),
(31,	1),
(30,	8),
(28,	9),
(24,	9),
(27,	9),
(16,	8),
(19,	9),
(15,	9),
(6,	1),
(9,	8),
(9,	2),
(9,	10),
(4,	2),
(2,	8),
(29,	9),
(14,	2),
(14,	1),
(11,	8),
(11,	7),
(18,	9),
(8,	1),
(32,	9),
(17,	7),
(34,	9),
(13,	7),
(13,	8),
(26,	9),
(22,	11),
(21,	9),
(5,	2),
(5,	7),
(5,	1),
(12,	9),
(10,	9);

DROP TABLE IF EXISTS "study_contribution";
CREATE TABLE "public"."study_contribution" (
    "study_id" integer NOT NULL,
    "contribution_id" integer NOT NULL,
    CONSTRAINT "study_contribution_pkey" PRIMARY KEY ("study_id", "contribution_id"),
    CONSTRAINT "study_contribution_contribution_id_fkey" FOREIGN KEY (contribution_id) REFERENCES contributions(id) NOT DEFERRABLE,
    CONSTRAINT "study_contribution_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_contribution" ("study_id", "contribution_id") VALUES
(23,	3),
(20,	9),
(7,	12),
(1,	7),
(1,	10),
(3,	9),
(3,	10),
(3,	12),
(35,	4),
(33,	10),
(25,	10),
(31,	4),
(30,	3),
(30,	4),
(28,	4),
(24,	9),
(27,	4),
(16,	5),
(19,	3),
(19,	7),
(15,	4),
(6,	4),
(6,	10),
(9,	7),
(4,	7),
(4,	10),
(2,	9),
(29,	4),
(29,	7),
(29,	8),
(29,	12),
(14,	3),
(14,	8),
(14,	12),
(11,	12),
(18,	4),
(18,	12),
(8,	9),
(8,	10),
(32,	4),
(17,	4),
(17,	8),
(17,	12),
(34,	4),
(13,	8),
(13,	12),
(26,	12),
(22,	8),
(22,	10),
(21,	10),
(21,	12),
(5,	4),
(5,	12),
(12,	12),
(10,	9);

DROP TABLE IF EXISTS "study_domain";
CREATE TABLE "public"."study_domain" (
    "study_id" integer NOT NULL,
    "domain_id" integer NOT NULL,
    CONSTRAINT "study_domain_pkey" PRIMARY KEY ("study_id", "domain_id"),
    CONSTRAINT "study_domain_domains_id_fkey" FOREIGN KEY (domain_id) REFERENCES domains(id) NOT DEFERRABLE,
    CONSTRAINT "study_domain_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_domain" ("study_id", "domain_id") VALUES
(23,	2),
(23,	3),
(20,	1),
(7,	4),
(1,	5),
(3,	10),
(3,	2),
(3,	6),
(35,	6),
(33,	6),
(25,	4),
(31,	1),
(30,	6),
(28,	1),
(24,	7),
(27,	1),
(16,	7),
(19,	1),
(15,	1),
(6,	1),
(9,	7),
(4,	1),
(2,	5),
(2,	8),
(29,	9),
(14,	10),
(11,	10),
(18,	4),
(8,	1),
(32,	1),
(34,	1),
(13,	4),
(26,	1),
(22,	3),
(21,	4),
(5,	10),
(5,	6),
(12,	10),
(10,	1),
(22,	5),
(17,	10);

DROP TABLE IF EXISTS "study_evidence";
CREATE TABLE "public"."study_evidence" (
    "study_id" integer NOT NULL,
    "evidence_id" integer NOT NULL,
    CONSTRAINT "study_evidence_pkey" PRIMARY KEY ("study_id", "evidence_id"),
    CONSTRAINT "study_evidence_evidence_id_fkey" FOREIGN KEY (evidence_id) REFERENCES evidences(id) NOT DEFERRABLE,
    CONSTRAINT "study_evidence_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_evidence" ("study_id", "evidence_id") VALUES
(23,	5),
(20,	5),
(7,	8),
(1,	6),
(3,	7),
(35,	5),
(25,	3),
(31,	5),
(30,	7),
(28,	3),
(24,	5),
(27,	5),
(16,	5),
(19,	8),
(15,	8),
(6,	5),
(9,	1),
(4,	6),
(2,	3),
(29,	5),
(14,	7),
(11,	5),
(18,	8),
(8,	3),
(32,	8),
(17,	7),
(34,	8),
(13,	8),
(26,	3),
(22,	7),
(21,	8),
(5,	7),
(12,	8),
(10,	3),
(33,	3);

DROP TABLE IF EXISTS "study_execution_strategy";
CREATE TABLE "public"."study_execution_strategy" (
    "study_id" integer NOT NULL,
    "execution_strategy_id" integer NOT NULL,
    CONSTRAINT "study_execution_strategy_pkey" PRIMARY KEY ("study_id", "execution_strategy_id"),
    CONSTRAINT "study_execution_strategy_execution_strategy_id_fkey" FOREIGN KEY (execution_strategy_id) REFERENCES execution_strategies(id) NOT DEFERRABLE,
    CONSTRAINT "study_execution_strategy_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);


DROP TABLE IF EXISTS "study_future";
CREATE TABLE "public"."study_future" (
    "study_id" integer NOT NULL,
    "future_id" integer NOT NULL,
    CONSTRAINT "study_future_pkey" PRIMARY KEY ("study_id", "future_id"),
    CONSTRAINT "study_future_future_id_fkey" FOREIGN KEY (future_id) REFERENCES futures(id) NOT DEFERRABLE,
    CONSTRAINT "study_future_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);


DROP TABLE IF EXISTS "study_goal";
CREATE TABLE "public"."study_goal" (
    "study_id" integer NOT NULL,
    "goal_id" integer NOT NULL,
    CONSTRAINT "study_goal_pkey" PRIMARY KEY ("study_id", "goal_id"),
    CONSTRAINT "study_goal_goal_id_fkey" FOREIGN KEY (goal_id) REFERENCES goals(id) NOT DEFERRABLE,
    CONSTRAINT "study_goal_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_goal" ("study_id", "goal_id") VALUES
(23,	1),
(23,	2),
(20,	2),
(20,	1),
(20,	3),
(20,	4),
(20,	5),
(20,	6),
(20,	7),
(7,	7),
(1,	7),
(3,	1),
(3,	7),
(3,	8),
(35,	7),
(33,	1),
(33,	9),
(33,	7),
(33,	2),
(25,	1),
(31,	2),
(30,	1),
(30,	2),
(30,	7),
(28,	7),
(24,	1),
(24,	2),
(24,	7),
(27,	1),
(27,	8),
(16,	7),
(16,	8),
(19,	9),
(15,	7),
(6,	2),
(9,	9),
(9,	7),
(9,	6),
(9,	1),
(4,	7),
(2,	1),
(29,	11),
(14,	7),
(14,	1),
(11,	8),
(11,	1),
(18,	9),
(18,	8),
(18,	2),
(8,	7),
(8,	2),
(32,	7),
(32,	1),
(32,	5),
(17,	7),
(17,	1),
(34,	7),
(34,	8),
(34,	1),
(13,	8),
(13,	1),
(26,	9),
(26,	2),
(26,	8),
(26,	7),
(22,	12),
(21,	11),
(5,	7),
(12,	13),
(12,	1),
(12,	8),
(10,	7),
(10,	4),
(29,	7),
(6,	7),
(31,	7);

DROP TABLE IF EXISTS "study_notation";
CREATE TABLE "public"."study_notation" (
    "study_id" integer NOT NULL,
    "notation_id" integer NOT NULL,
    CONSTRAINT "study_notations_pkey" PRIMARY KEY ("study_id", "notation_id"),
    CONSTRAINT "study_notations_notation_id_fkey" FOREIGN KEY (notation_id) REFERENCES notations(id) NOT DEFERRABLE,
    CONSTRAINT "study_notations_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_notation" ("study_id", "notation_id") VALUES
(23,	1),
(20,	6),
(20,	2),
(7,	3),
(1,	3),
(3,	3),
(3,	4),
(35,	5),
(35,	2),
(33,	14),
(25,	7),
(31,	8),
(30,	5),
(30,	2),
(28,	20),
(24,	5),
(24,	9),
(24,	3),
(27,	2),
(27,	10),
(16,	11),
(16,	2),
(19,	10),
(19,	6),
(15,	12),
(6,	12),
(9,	14),
(4,	14),
(2,	11),
(29,	13),
(14,	3),
(11,	4),
(11,	3),
(18,	14),
(8,	12),
(32,	12),
(32,	3),
(17,	15),
(34,	12),
(13,	16),
(26,	17),
(22,	18),
(21,	14),
(5,	3),
(12,	4),
(12,	19),
(12,	3),
(10,	5),
(25,	8);

DROP TABLE IF EXISTS "study_quality_attribute";
CREATE TABLE "public"."study_quality_attribute" (
    "study_id" integer NOT NULL,
    "quality_attribute_id" integer NOT NULL,
    CONSTRAINT "study_quality_attribute_pkey" PRIMARY KEY ("study_id", "quality_attribute_id"),
    CONSTRAINT "study_quality_attribute_quality_attribute_id_fkey" FOREIGN KEY (quality_attribute_id) REFERENCES quality_attributes(id) NOT DEFERRABLE,
    CONSTRAINT "study_quality_attribute_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_quality_attribute" ("study_id", "quality_attribute_id") VALUES
(23,	4),
(20,	4),
(7,	8),
(1,	6),
(3,	4),
(3,	6),
(35,	8),
(33,	2),
(33,	4),
(33,	6),
(25,	8),
(31,	4),
(30,	2),
(30,	4),
(28,	2),
(28,	4),
(24,	2),
(27,	2),
(27,	4),
(16,	2),
(19,	4),
(15,	2),
(15,	4),
(6,	2),
(9,	4),
(4,	1),
(4,	4),
(4,	6),
(2,	4),
(2,	6),
(14,	2),
(11,	8),
(18,	1),
(18,	2),
(8,	2),
(32,	2),
(32,	4),
(17,	2),
(17,	4),
(34,	2),
(13,	7),
(26,	4),
(22,	1),
(21,	8),
(5,	8),
(12,	8),
(10,	8);

DROP TABLE IF EXISTS "study_research_method";
CREATE TABLE "public"."study_research_method" (
    "study_id" integer NOT NULL,
    "research_method_id" integer NOT NULL,
    CONSTRAINT "study_research_method_pkey" PRIMARY KEY ("study_id", "research_method_id"),
    CONSTRAINT "study_research_method_research_method_id_fkey" FOREIGN KEY (research_method_id) REFERENCES research_methods(id) NOT DEFERRABLE,
    CONSTRAINT "study_research_method_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_research_method" ("study_id", "research_method_id") VALUES
(23,	6),
(20,	6),
(7,	6),
(1,	7),
(3,	2),
(3,	6),
(3,	7),
(35,	7),
(33,	7),
(25,	7),
(31,	4),
(31,	7),
(30,	6),
(28,	6),
(24,	6),
(27,	6),
(16,	6),
(19,	6),
(15,	6),
(6,	7),
(9,	7),
(4,	7),
(2,	7),
(29,	6),
(14,	6),
(11,	6),
(11,	7),
(18,	6),
(8,	7),
(32,	6),
(17,	6),
(34,	6),
(13,	6),
(26,	6),
(22,	2),
(22,	6),
(21,	2),
(21,	6),
(5,	6),
(12,	6),
(10,	6);

DROP TABLE IF EXISTS "study_sos_characteristic";
CREATE TABLE "public"."study_sos_characteristic" (
    "study_id" integer NOT NULL,
    "sos_characteristic_id" integer NOT NULL,
    CONSTRAINT "study_sos_characteristic_pkey" PRIMARY KEY ("study_id", "sos_characteristic_id"),
    CONSTRAINT "study_sos_characteristic_sos_characteristic_id_fkey" FOREIGN KEY (sos_characteristic_id) REFERENCES sos_characteristics(id) NOT DEFERRABLE,
    CONSTRAINT "study_sos_characteristic_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_sos_characteristic" ("study_id", "sos_characteristic_id") VALUES
(23,	2),
(23,	3),
(23,	4),
(23,	5),
(23,	6),
(20,	2),
(20,	3),
(20,	4),
(20,	5),
(20,	6),
(20,	7),
(7,	7),
(1,	1),
(1,	2),
(1,	9),
(1,	10),
(3,	5),
(3,	6),
(3,	7),
(35,	11),
(33,	5),
(33,	6),
(33,	7),
(25,	1),
(25,	2),
(25,	5),
(25,	6),
(25,	9),
(25,	10),
(31,	2),
(31,	3),
(31,	4),
(31,	10),
(30,	5),
(30,	6),
(30,	7),
(28,	1),
(28,	2),
(28,	3),
(28,	4),
(28,	5),
(28,	6),
(28,	7),
(24,	5),
(24,	6),
(27,	11),
(16,	5),
(16,	6),
(19,	11),
(15,	2),
(6,	11),
(9,	1),
(9,	2),
(9,	3),
(9,	4),
(9,	5),
(9,	6),
(9,	7),
(9,	8),
(4,	3),
(4,	8),
(2,	5),
(2,	6),
(29,	1),
(29,	2),
(29,	3),
(29,	7),
(14,	5),
(14,	6),
(14,	7),
(11,	1),
(11,	4),
(11,	5),
(11,	6),
(11,	10),
(18,	3),
(8,	2),
(8,	3),
(32,	1),
(32,	2),
(32,	4),
(32,	5),
(32,	6),
(32,	10),
(17,	2),
(17,	3),
(17,	5),
(17,	6),
(34,	11),
(13,	5),
(13,	6),
(13,	7),
(13,	10),
(26,	1),
(26,	2),
(26,	3),
(26,	4),
(26,	5),
(26,	6),
(26,	10),
(22,	2),
(22,	3),
(22,	5),
(22,	6),
(22,	7),
(22,	8),
(21,	1),
(21,	2),
(21,	4),
(21,	5),
(21,	7),
(5,	5),
(5,	6),
(5,	7),
(12,	5),
(12,	6),
(10,	11),
(21,	6),
(23,	8),
(20,	8),
(8,	8),
(17,	8),
(18,	8),
(26,	8),
(28,	8),
(29,	8),
(31,	8),
(9,	10),
(21,	10),
(28,	10),
(29,	10),
(13,	1),
(31,	1),
(11,	9),
(9,	9),
(29,	9);

DROP TABLE IF EXISTS "study_sos_type";
CREATE TABLE "public"."study_sos_type" (
    "study_id" integer NOT NULL,
    "sos_type_id" integer NOT NULL,
    CONSTRAINT "study_sos_type_pkey" PRIMARY KEY ("study_id", "sos_type_id"),
    CONSTRAINT "study_sos_type_sos_types_id_fkey" FOREIGN KEY (sos_type_id) REFERENCES sos_types(id) NOT DEFERRABLE,
    CONSTRAINT "study_sos_type_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_sos_type" ("study_id", "sos_type_id") VALUES
(23,	3),
(20,	3),
(7,	5),
(1,	2),
(3,	2),
(3,	3),
(35,	3),
(33,	3),
(31,	3),
(30,	3),
(28,	3),
(24,	1),
(27,	3),
(16,	5),
(19,	5),
(15,	3),
(6,	3),
(9,	2),
(4,	5),
(2,	5),
(29,	2),
(14,	2),
(11,	2),
(18,	5),
(8,	3),
(32,	5),
(17,	2),
(34,	5),
(13,	5),
(26,	5),
(22,	3),
(21,	5),
(5,	2),
(5,	3),
(10,	5),
(25,	5),
(12,	5);

DROP TABLE IF EXISTS "study_static_problems";
CREATE TABLE "public"."study_static_problems" (
    "study_id" integer NOT NULL,
    "static_problem_id" integer NOT NULL,
    CONSTRAINT "study_static_problem_pkey" PRIMARY KEY ("study_id", "static_problem_id"),
    CONSTRAINT "study_static_problem_static_problem_id_fkey" FOREIGN KEY (static_problem_id) REFERENCES static_problems(id) NOT DEFERRABLE,
    CONSTRAINT "study_static_problem_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE
) WITH (oids = false);


DROP TABLE IF EXISTS "study_synchronization_strategy";
CREATE TABLE "public"."study_synchronization_strategy" (
    "study_id" integer NOT NULL,
    "synchronization_strategy_id" integer NOT NULL,
    CONSTRAINT "study_synchronization_strategy_pkey" PRIMARY KEY ("study_id", "synchronization_strategy_id"),
    CONSTRAINT "study_synchronization_strategy_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE,
    CONSTRAINT "study_synchronization_strategy_synchronization_strategy_id_fkey" FOREIGN KEY (synchronization_strategy_id) REFERENCES synchronization_strategies(id) NOT DEFERRABLE
) WITH (oids = false);


DROP TABLE IF EXISTS "study_tool";
CREATE TABLE "public"."study_tool" (
    "study_id" integer NOT NULL,
    "tool_id" integer NOT NULL,
    CONSTRAINT "study_tool_pkey" PRIMARY KEY ("study_id", "tool_id"),
    CONSTRAINT "study_tool_study_id_fkey" FOREIGN KEY (study_id) REFERENCES studies(id) NOT DEFERRABLE,
    CONSTRAINT "study_tool_tool_id_fkey" FOREIGN KEY (tool_id) REFERENCES tools(id) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "study_tool" ("study_id", "tool_id") VALUES
(23,	1),
(23,	2),
(20,	29),
(7,	29),
(1,	3),
(3,	3),
(35,	5),
(33,	29),
(25,	6),
(31,	6),
(30,	5),
(28,	8),
(24,	9),
(27,	5),
(16,	29),
(19,	29),
(15,	29),
(6,	13),
(9,	29),
(4,	29),
(2,	14),
(2,	15),
(29,	16),
(29,	30),
(29,	17),
(29,	31),
(14,	3),
(14,	18),
(11,	3),
(18,	29),
(8,	13),
(32,	29),
(17,	13),
(17,	22),
(17,	23),
(34,	29),
(13,	24),
(26,	26),
(22,	27),
(21,	29),
(5,	3),
(12,	28),
(10,	13);

DROP TABLE IF EXISTS "synchronization_strategies";
DROP SEQUENCE IF EXISTS synchronization_strategies_id_seq;
CREATE SEQUENCE synchronization_strategies_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."synchronization_strategies" (
    "id" integer DEFAULT nextval('synchronization_strategies_id_seq') NOT NULL,
    "name" character varying(255),
    "description" character varying(255),
    CONSTRAINT "synchronization_strategies_name_key" UNIQUE ("name"),
    CONSTRAINT "synchronization_strategies_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "tools";
DROP SEQUENCE IF EXISTS tools_id_seq;
CREATE SEQUENCE tools_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."tools" (
    "id" integer DEFAULT nextval('tools_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "tools_name_key" UNIQUE ("name"),
    CONSTRAINT "tools_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "tools" ("id", "name") VALUES
(1,	'Rhinoceros 3d'),
(2,	'Radiance'),
(3,	'MS4ME'),
(4,	'Xtend'),
(5,	'CPN Tools'),
(6,	'ExtendSim'),
(7,	'OpEMCSS'),
(8,	'SEAS'),
(9,	'DEVS-Suite'),
(10,	'Xpand'),
(11,	'Eclipse ATL'),
(12,	'Altova Mapforce'),
(13,	'IBM Rational Rhapsody'),
(14,	'Mosaik'),
(15,	'PyPower simulator'),
(18,	'SoSADL Studio'),
(19,	'Eclipse Modeling Framework (EMF)'),
(20,	'Eclipse Xtext'),
(21,	'DEVS Unified Process (DUNIP)'),
(22,	'DESYRE'),
(23,	'OpenModelica'),
(24,	'Java agent development framework (JADE)'),
(25,	'Eclipse Acceleo'),
(26,	'CUTS Tool suite'),
(27,	'Eurema'),
(28,	'M2ARCH'),
(29,	'Not informed'),
(16,	'Microsoft .Net Framework'),
(30,	'DSL Tools'),
(17,	'Windows Workflow Foundation (WF)'),
(31,	'Windows Communication Foundation (WCF)');

-- 2021-04-07 13:39:22.697491+00
