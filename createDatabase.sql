CREATE TABLE COMPANIES(
COMPANY_CODE INT, 
PRIMARY KEY (COMPANY_CODE),
COMPANY VARCHAR(30),
COMPANYHQ_CITY VARCHAR(30), 
COMPANYHQ_STATE VARCHAR(30)
);

CREATE TABLE AGENTS(
AGENT_CODE INT, 
PRIMARY KEY (AGENT_CODE),
AFNAME VARCHAR(30), 
ALNAME VARCHAR(30));

CREATE TABLE INSURED(
INSURED_CODE INT, 
PRIMARY KEY (INSURED_CODE),
IFNAME VARCHAR(30), 
ILNAME VARCHAR(30), 
AGE INT, 
ADDRESS VARCHAR(30),
VIN_NUM VARCHAR(30),
CAR_MAKE VARCHAR(30),
CAR_MODEL VARCHAR(30),
CAR_YEAR INT);

CREATE TABLE POLICY(
POLICY_NUMBER INT, 
PRIMARY KEY (POLICY_NUMBER), 
AGENT_CODE INT, 
INSURED_CODE INT, 
FOREIGN KEY (AGENT_CODE) REFERENCES AGENTS(AGENT_CODE), 
FOREIGN KEY (INSURED_CODE) REFERENCES INSURED(INSURED_CODE));


CREATE TABLE BRANCH(
BRANCH_CODE INT,
PRIMARY KEY (BRANCH_CODE),
BRANCH VARCHAR(30), 
BRANCH_CITY VARCHAR(30),
BRANCH_STATE VARCHAR(30),
COMPANY_CODE INT,
FOREIGN KEY (COMPANY_CODE) REFERENCES COMPANIES (COMPANY_CODE));


CREATE TABLE OFFICE(
OFFICE_CODE INT,
PRIMARY KEY (OFFICE_CODE),
AGENT_CODE INT,
BRANCH_CODE INT,
FOREIGN KEY (AGENT_CODE) REFERENCES AGENTS(AGENT_CODE),
FOREIGN KEY (BRANCH_CODE) REFERENCES BRANCH(BRANCH_CODE));


ALTER TABLE AGENTS ADD POLICY_NUMBER INT;
ALTER TABLE AGENTS ADD FOREIGN KEY (POLICY_NUMBER) REFERENCES POLICY(POLICY_NUMBER);

ALTER TABLE INSURED ADD POLICY_NUMBER INT;
ALTER TABLE INSURED ADD FOREIGN KEY (POLICY_NUMBER) REFERENCES POLICY(POLICY_NUMBER);

ALTER TABLE COMPANIES ADD BRANCH_CODE INT;
ALTER TABLE COMPANIES ADD FOREIGN KEY (BRANCH_CODE) REFERENCES BRANCH(BRANCH_CODE);

insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (1, 'Laughton', 'Couttes');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (2, 'Verina', 'Castano');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (3, 'Cody', 'Wasbrough');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (4, 'Mildred', 'McWhin');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (5, 'Cassy', 'Fairall');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (6, 'Bernetta', 'Mathan');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (7, 'Ignaz', 'Braidford');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (8, 'Joscelin', 'Janic');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (9, 'Fianna', 'Hambling');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (10, 'Tate', 'Vautrey');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (11, 'Wolfie', 'Gooddie');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (12, 'Rachel', 'Smallcombe');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (13, 'Fabe', 'Troughton');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (14, 'Angie', 'Genner');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (15, 'Ronnica', 'Eddins');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (16, 'Cart', 'Cometti');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (17, 'Stefano', 'Mackro');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (18, 'Trisha', 'O'' Donohoe');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (19, 'Kenneth', 'Lindberg');
insert into AGENTS (AGENT_CODE, AFNAME, ALNAME) values (20, 'Zulema', 'Miklem');

insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (1, 'Lucila', 'Hitscher', 37, '20038 Rusk Circle', '4IVRH54961X154800', 'Ford', 'Explorer', 1993);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (2, 'Archibold', 'Yeates', 67, '15448 Corscot Court', '6DMHZ27368A606820', 'Pontiac', 'Grand Prix', 1986);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (3, 'Dian', 'Hugh', 73, '3642 Del Sol Road', '5FYFA39779E685682', 'Kia', 'Soul', 2012);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (4, 'Corenda', 'Bartrop', 72, '547 Corry Point', '5PIIK65572D534549', 'Ford', 'Windstar', 2000);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (5, 'Sheila-kathryn', 'Golde', 89, '70876 Ridge Oak Alley', '4IOGW35406E503799', 'Nissan', 'Murano', 2007);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (6, 'Gianna', 'Quick', 26, '26283 Main Road', '1FOIA16280J734909', 'Buick', 'Enclave', 2011);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (7, 'Kermit', 'Draycott', 36, '6726 Gerald Crossing', '2WNJZ12018I294723', 'Chevrolet', 'Impala', 2000);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (8, 'Tiphani', 'Mesant', 32, '6524 Hermina Place', '6LUEI44489W313352', 'Saturn', 'L-Series', 2001);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (9, 'Allix', 'Bettlestone', 83, '9 Bunker Hill Drive', '7CGNV59809U681815', 'Volkswagen', 'Phaeton', 2004);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (10, 'Peder', 'Ivett', 58, '851 Chive Hill', '7QVSI09738O803143', 'Mercury', 'Tracer', 1998);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (11, 'Kassia', 'Garret', 28, '847 Susan Trail', '6YEBU58189S513581', 'Chevrolet', 'Tahoe', 2013);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (12, 'Madeleine', 'Weigh', 55, '49 Straubel Parkway', '2BZVO45211F078997', 'Mitsubishi', 'Lancer', 2008);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (13, 'Hervey', 'Mackison', 81, '24 Carey Trail', '6ZWRT30666V228391', 'Volkswagen', 'CC', 2010);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (14, 'Yogi', 'Schlesinger', 20, '5012 Lazy Birch Loop', '1DXOI00765S321501', 'Jeep', 'Patriot', 2012);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (15, 'Albrecht', 'Baugh', 71, '877 Shasta Plaza', '0ZMRS59215R857027', 'Buick', 'Regal', 1985);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (16, 'Rachelle', 'Leifer', 42, '1 Petterle Alley', '1WAEF80235K088508', 'Volvo', 'C70', 2003);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (17, 'Hugo', 'Cudbertson', 32, '16 Hoffman Plaza', '0SXFO71592C752814', 'Ferrari', 'F430', 2006);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (18, 'Olive', 'Wrates', 68, '1 7th Circle', '5XLTF64663A367797', 'Ford', 'Mustang', 2006);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (19, 'Tarra', 'Wiffler', 53, '2 Dovetail Place', '2OGTU37767L914917', 'Ford', 'Excursion', 2001);
insert into INSURED (INSURED_CODE, IFNAME, ILNAME, AGE, ADDRESS, VIN_NUM, CAR_MAKE, CAR_MODEL, CAR_YEAR) values (20, 'Arlee', 'Tawse', 75, '8528 Duke Hill', '3OIKR36588G627621', 'Chevrolet', 'Camaro', 1975);

insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (1, 1, 1);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (2, 2, 2);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (3, 3, 3);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (4, 4, 4);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (5, 5, 5);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (6, 6, 6);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (7, 7, 7);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (8, 8, 8);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (9, 9, 9);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (10, 10, 10);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (11, 11, 11);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (12, 12, 12);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (13, 13, 13);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (14, 14, 14);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (15, 15, 15);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (16, 16, 16);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (17, 17, 17);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (18, 18, 18);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (19, 19, 19);
insert into POLICY (POLICY_NUMBER, AGENT_CODE, INSURED_CODE) values (20, 20, 20);

insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (1, 'Shields Group', 'Erie', 'Pennsylvania');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (2, 'Upton-Walter', 'Columbus', 'Georgia');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (3, 'Schmeler and Sons', 'Toledo', 'Ohio');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (4, 'Steuber Inc', 'Merrifield', 'Virginia');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (5, 'Abshire Inc', 'Memphis', 'Tennessee');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (6, 'Bernier Inc', 'Palatine', 'Illinois');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (7, 'Kemmer Inc', 'Ventura', 'California');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (8, 'Legros-Kemmer', 'Cleveland', 'Ohio');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (9, 'Labadie, Metz and Flatley', 'Asheville', 'North Carolina');
insert into COMPANIES (COMPANY_CODE, COMPANY, COMPANYHQ_CITY, COMPANYHQ_STATE) values (10, 'Boyle, Grimes and McLaughlin', 'Flint', 'Michigan');

insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (1, 'Pouros-Green', 'Wilmington', 'Delaware');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (2, 'Hayes-VonRueden', 'Denver', 'Colorado');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (3, 'Wintheiser, Littel and Shields', 'San Jose', 'California');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (4, 'Schaden, Gislason and Graham', 'Champaign', 'Illinois');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (5, 'Heathcote LLC', 'Cambridge', 'Massachusetts');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (6, 'Schuster LLC', 'Tulsa', 'Oklahoma');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (7, 'Connelly-Schuster', 'Birmingham', 'Alabama');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (8, 'Morissette, Herman and Hansen', 'Austin', 'Texas');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (9, 'Nicolas, Keebler and Reichert', 'Saint Paul', 'Minnesota');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (10, 'Wolf-Simonis', 'Washington', 'District of Columbia');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (11, 'Stokes-Hagenes', 'Baltimore', 'Maryland');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (12, 'Nader, Mertz and Williamson', 'Charlotte', 'North Carolina');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (13, 'Borer, Abshire and Rempel', 'Washington', 'District of Columbia');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (14, 'Vandervort-Langworth', 'San Francisco', 'California');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (15, 'Altenwerth, Schoen and Considine', 'Albany', 'New York');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (16, 'Hartmann-Reynolds', 'Van Nuys', 'California');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (17, 'Ziemann Group', 'Columbia', 'Missouri');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (18, 'Lemke Group', 'Chattanooga', 'Tennessee');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (19, 'Cronin, Bartell and Casper', 'Wilmington', 'Delaware');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (20, 'Pfannerstill LLC', 'Miami', 'Florida');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (21, 'Oberbrunner, McLaughlin and Corwin', 'Stockton', 'California');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (22, 'Aufderhar-Franecki', 'Lincoln', 'Nebraska');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (23, 'Fay and Sons', 'Denver', 'Colorado');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (24, 'Schmitt-Gottlieb', 'Washington', 'District of Columbia');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (25, 'Sanford, Johns and Tremblay', 'Hartford', 'Connecticut');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (26, 'Roberts, D''Amore and Stamm', 'Fort Lauderdale', 'Florida');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (27, 'Willms, Kuhn and Parker', 'Lincoln', 'Nebraska');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (28, 'Simonis, Kohler and Herzog', 'New York City', 'New York');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (29, 'Rodriguez Inc', 'Indianapolis', 'Indiana');
insert into BRANCH (BRANCH_CODE, BRANCH, BRANCH_CITY, BRANCH_STATE) values (30, 'Cronin, Kilback and Ortiz', 'West Palm Beach', 'Florida');

insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (1, 1, 1);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (2, 2, 2);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (3, 3, 3);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (4, 4, 4);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (5, 5, 5);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (6, 6, 6);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (7, 7, 7);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (8, 8, 8);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (9, 9, 9);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (10, 10, 10);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (11, 11, 11);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (12, 12, 12);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (13, 13, 13);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (14, 14, 14);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (15, 15, 15);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (16, 16, 16);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (17, 17, 17);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (18, 18, 18);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (19, 19, 19);
insert into OFFICE (OFFICE_CODE, AGENT_CODE, BRANCH_CODE) values (20, 20, 20);

UPDATE AGENTS set POLICY_NUMBER = 1 where AGENT_CODE = 1;
UPDATE AGENTS set POLICY_NUMBER = 2 where AGENT_CODE = 2;
UPDATE AGENTS set POLICY_NUMBER = 3 where AGENT_CODE = 3;
UPDATE AGENTS set POLICY_NUMBER = 4 where AGENT_CODE = 4;
UPDATE AGENTS set POLICY_NUMBER = 5 where AGENT_CODE = 5;
UPDATE AGENTS set POLICY_NUMBER = 6 where AGENT_CODE = 6;
UPDATE AGENTS set POLICY_NUMBER = 7 where AGENT_CODE = 7;
UPDATE AGENTS set POLICY_NUMBER = 8 where AGENT_CODE = 8;
UPDATE AGENTS set POLICY_NUMBER = 9 where AGENT_CODE = 9;
UPDATE AGENTS set POLICY_NUMBER = 10 where AGENT_CODE = 10;
UPDATE AGENTS set POLICY_NUMBER = 11 where AGENT_CODE = 11;
UPDATE AGENTS set POLICY_NUMBER = 12 where AGENT_CODE = 12;
UPDATE AGENTS set POLICY_NUMBER = 13 where AGENT_CODE = 13;
UPDATE AGENTS set POLICY_NUMBER = 14 where AGENT_CODE = 14;
UPDATE AGENTS set POLICY_NUMBER = 15 where AGENT_CODE = 15;
UPDATE AGENTS set POLICY_NUMBER = 16 where AGENT_CODE = 16;
UPDATE AGENTS set POLICY_NUMBER = 17 where AGENT_CODE = 17;
UPDATE AGENTS set POLICY_NUMBER = 18 where AGENT_CODE = 18;
UPDATE AGENTS set POLICY_NUMBER = 19 where AGENT_CODE = 19;
UPDATE AGENTS set POLICY_NUMBER = 20 where AGENT_CODE = 20;

UPDATE INSURED set POLICY_NUMBER = 1 where INSURED_CODE = 1;
UPDATE INSURED set POLICY_NUMBER = 2 where INSURED_CODE = 2;
UPDATE INSURED set POLICY_NUMBER = 3 where INSURED_CODE = 3;
UPDATE INSURED set POLICY_NUMBER = 4 where INSURED_CODE = 4;
UPDATE INSURED set POLICY_NUMBER = 5 where INSURED_CODE = 5;
UPDATE INSURED set POLICY_NUMBER = 6 where INSURED_CODE = 6;
UPDATE INSURED set POLICY_NUMBER = 7 where INSURED_CODE = 7;
UPDATE INSURED set POLICY_NUMBER = 8 where INSURED_CODE = 8;
UPDATE INSURED set POLICY_NUMBER = 9 where INSURED_CODE = 9;
UPDATE INSURED set POLICY_NUMBER = 10 where INSURED_CODE = 10;
UPDATE INSURED set POLICY_NUMBER = 11 where INSURED_CODE = 11;
UPDATE INSURED set POLICY_NUMBER = 12 where INSURED_CODE = 12;
UPDATE INSURED set POLICY_NUMBER = 13 where INSURED_CODE = 13;
UPDATE INSURED set POLICY_NUMBER = 14 where INSURED_CODE = 14;
UPDATE INSURED set POLICY_NUMBER = 15 where INSURED_CODE = 15;
UPDATE INSURED set POLICY_NUMBER = 16 where INSURED_CODE = 16;
UPDATE INSURED set POLICY_NUMBER = 17 where INSURED_CODE = 17;
UPDATE INSURED set POLICY_NUMBER = 18 where INSURED_CODE = 18;
UPDATE INSURED set POLICY_NUMBER = 19 where INSURED_CODE = 19;
UPDATE INSURED set POLICY_NUMBER = 20 where INSURED_CODE = 20;

UPDATE COMPANIES set BRANCH_CODE = 1 where COMPANY_CODE = 1;
UPDATE COMPANIES set BRANCH_CODE = 2 where COMPANY_CODE = 2;
UPDATE COMPANIES set BRANCH_CODE = 3 where COMPANY_CODE = 3;
UPDATE COMPANIES set BRANCH_CODE = 4 where COMPANY_CODE = 4;
UPDATE COMPANIES set BRANCH_CODE = 5 where COMPANY_CODE = 5;
UPDATE COMPANIES set BRANCH_CODE = 6 where COMPANY_CODE = 6;
UPDATE COMPANIES set BRANCH_CODE = 7 where COMPANY_CODE = 7;
UPDATE COMPANIES set BRANCH_CODE = 8 where COMPANY_CODE = 8;
UPDATE COMPANIES set BRANCH_CODE = 9 where COMPANY_CODE = 9;
UPDATE COMPANIES set BRANCH_CODE = 10 where COMPANY_CODE = 10;

UPDATE BRANCH set COMPANY_CODE = 2 where BRANCH_CODE = 1;
UPDATE BRANCH set COMPANY_CODE = 7 where BRANCH_CODE = 2;
UPDATE BRANCH set COMPANY_CODE = 6 where BRANCH_CODE = 3;
UPDATE BRANCH set COMPANY_CODE = 9 where BRANCH_CODE = 4;
UPDATE BRANCH set COMPANY_CODE = 10 where BRANCH_CODE = 5;
UPDATE BRANCH set COMPANY_CODE = 10 where BRANCH_CODE = 6;
UPDATE BRANCH set COMPANY_CODE = 1 where BRANCH_CODE = 7;
UPDATE BRANCH set COMPANY_CODE = 10 where BRANCH_CODE = 8;
UPDATE BRANCH set COMPANY_CODE = 3 where BRANCH_CODE = 9;
UPDATE BRANCH set COMPANY_CODE = 7 where BRANCH_CODE = 10;
UPDATE BRANCH set COMPANY_CODE = 5 where BRANCH_CODE = 11;
UPDATE BRANCH set COMPANY_CODE = 6 where BRANCH_CODE = 12;
UPDATE BRANCH set COMPANY_CODE = 7 where BRANCH_CODE = 13;
UPDATE BRANCH set COMPANY_CODE = 1 where BRANCH_CODE = 14;
UPDATE BRANCH set COMPANY_CODE = 6 where BRANCH_CODE = 15;
UPDATE BRANCH set COMPANY_CODE = 3 where BRANCH_CODE = 16;
UPDATE BRANCH set COMPANY_CODE = 8 where BRANCH_CODE = 17;
UPDATE BRANCH set COMPANY_CODE = 2 where BRANCH_CODE = 18;
UPDATE BRANCH set COMPANY_CODE = 8 where BRANCH_CODE = 19;
UPDATE BRANCH set COMPANY_CODE = 4 where BRANCH_CODE = 20;
UPDATE BRANCH set COMPANY_CODE = 4 where BRANCH_CODE = 21;
UPDATE BRANCH set COMPANY_CODE = 4 where BRANCH_CODE = 22;
UPDATE BRANCH set COMPANY_CODE = 3 where BRANCH_CODE = 23;
UPDATE BRANCH set COMPANY_CODE = 8 where BRANCH_CODE = 24;
UPDATE BRANCH set COMPANY_CODE = 1 where BRANCH_CODE = 25;
UPDATE BRANCH set COMPANY_CODE = 9 where BRANCH_CODE = 26;
UPDATE BRANCH set COMPANY_CODE = 5 where BRANCH_CODE = 27;
UPDATE BRANCH set COMPANY_CODE = 9 where BRANCH_CODE = 28;
UPDATE BRANCH set COMPANY_CODE = 2 where BRANCH_CODE = 29;
UPDATE BRANCH set COMPANY_CODE = 5 where BRANCH_CODE = 30;