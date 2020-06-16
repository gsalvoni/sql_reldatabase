-- 8 first teams for rankings
INSERT INTO TEAM
VALUES 
('PSV','PSV Eindhoven', 19130831, 'Philips Stadium', 'Eindhoven', 'https://www.psv.nl/', 24, 13, 0, 1, 1),
('AJX','AFC Ajax', 19000318, 'Johan Cruyff Arena', 'Amsterdam', 'https://www.ajax.nl/', 33, 12, 1, 1, 2),
('FEY','Feyenoord Rotterdam', 19080719, 'De Kuip', 'Rotterdam', 'https://www.feyenoord.nl/', 15, 10, 2, 2, 3),
('HER','Heracles Almelo', 19030503, 'Polman Stadion', 'Almelo', 'https://www.heracles.nl/', 2, 7, 2, 5, 4),
('UTR','FC Utrecht', 19700701, 'Stadion Galgenwaard', 'Utrecht', 'https://www.fcutrecht.nl/', 0, 6, 4, 4, 5),
('VIT','SBV Vitesse', 18920514, 'GelreDome', 'Arnhem', 'https://www.vitesse.nl/', 0, 6, 4, 4, 6),
('ALK','AZ Alkmaar', 19670510, 'AFAS Stadion', 'Alkmaar', 'https://www.az.nl/', 2, 5, 4, 5, 7),
('VVV','VVV Venlo', 19030207, 'De Koel', 'Venlo', 'https://www.vvv-venlo.nl/', 0, 5, 4, 5, 8);

-- Opponents of PSV that were not in the 8 first teams
INSERT INTO TEAM
VALUES
('FOR','Fortuna Sittard', 19680701, 'Trendwork Arena', 'Sittard-Geleen', 'https://www.fortunasittard.nl/', 0, 4, 4, 6, 10),
('ZWO','PEC Zwolle', 19100612, 'MAC PARK Stadion', 'Zwolle', 'https://www.peczwolle.nl/', 0, 4, 2, 8, 14),
('WIL','Willem II Tilbourg', 18960812, 'Willem II Stadion', 'Tilbourg', 'https://www.willem-ii.nl/', 3, 4, 4, 6, 11),
('DHG','ADO Den Haag', 19050201, 'Cars Jeans Stadion', 'Den Haag', 'https://www.adodenhaag.nl/', 2, 4, 3, 7, 13),
('NAC','NAC Breda', 19120101, 'Rat Verlegh Stadion', 'Breda', 'https://www.nac.nl/', 1, 2, 2, 10, 18);

-- Captains of PSV and Vitesse
INSERT INTO PLAYER
(plnb, plfname, pllname, pldob, plposition, plnbgames, plnbgoals, plnbassists, plredcards, plyellowcards, TEAMPL_teamcode, TEAMCPT_teamcode)
VALUES
(9,'Luuk', 'de Jong', 19900827, 'Forward', 14, 12, 3, 0, 2, 'PSV', 'PSV'),
(11,'Bryan', 'Linssen', 19901007, 'Forward', 13, 4, 1, 0, 3, 'VIT', 'VIT');

-- Managers of PSV and Vitesse
INSERT INTO STAFF_MEMBER
VALUES
(1,'Mark', 'Peter Gertruda Andreas', 'van Bommel', 19770422, 'Manager', 'PSV', 'PSV'),
(1,'Leonid', 'Viktorovitsj', 'Sloetski', 19710504, 'Manager', 'VIT', 'VIT');

-- Logo of 7 first teams  
INSERT INTO LOGO
VALUES
(1, 'psvlogo.jpg', 20140701, 'PSV'),
(2, 'ajaxlogo.jpg', 19910701, 'AJX'),
(3, 'feyenoordlogo.jpg', 20090701, 'FEY'),
(4, 'heracleslogo.jpg', 20150701, 'HER'),
(6, 'vitesselogo.jpg', 19840701, 'VIT');

INSERT INTO LOGO
(logoid, logofilename, TEAMLOGO_teamcode)
VALUES
(5, 'utrechtlogo.jpg', 'UTR'),
(7, 'azlogo.jpg', 'ALK'),
(8, 'venlologo.jpg', 'VVV');


-- 8 first games of PSV + game against Vitesse
INSERT INTO GAME
VALUES
(1, 20180811, 204500, 4, 0, 'Bas', 'Nijhuis', 33100, 'PSV', 'UTR'),
(2, 20180818, 204500, 1, 2, 'Pol', 'van Boekel', 11135, 'FOR', 'PSV'),
(3, 20180825, 204500, 1, 2, 'Bjorn', 'Kuipers', 13255, 'ZWO', 'PSV'),
(4, 20180901, 194500, 6, 1, 'Jochem', 'Kamphuis', 33300, 'PSV', 'WIL'),
(5, 20180915, 183000, 0, 7, 'Bas', 'Nijhuis', 14519, 'DHG', 'PSV'),
(6, 20180923, 164500, 3, 0, 'Danny', 'Makkelie', 35000, 'PSV', 'AJX'),
(7, 20180929, 183000, 0, 2, 'Dennis', 'Higler', 18926, 'NAC', 'PSV'),
(8, 20181006, 194500, 4, 0, 'Siemen', 'Mulder', 33800, 'PSV', 'VVV'),
(11, 20181103, 183000, 1, 0, 'Serdar', 'Gozubuyuk', 34100, 'PSV', 'VIT');

-- Goal against vitesse
INSERT INTO GOAL
VALUES(1, 69, 'Lozano', 'Right foot', 'https://www.youtube.com/watch?v=8xfhLGPJmCk', 11, 9, 'PSV', 'VIT', 'PSV');

-- Goals against Utrecht
INSERT INTO GOAL
VALUES
(1, 16, 'None', 'Free kick', 'https://www.youtube.com/watch?v=fCXzP7378JQ&t=147s', 1, 7, 'PSV', 'UTR', 'PSV'),
(2, 57, 'None', 'Right foot', 'https://www.youtube.com/watch?v=fCXzP7378JQ&t=147s', 1, 17, 'PSV', 'UTR', 'PSV'),
(3, 77, 'None', 'Right foot', 'https://www.youtube.com/watch?v=fCXzP7378JQ&t=147s', 1, 11, 'PSV', 'UTR', 'PSV'),
(4, 81, 'Pereiro', 'Header', 'https://www.youtube.com/watch?v=fCXzP7378JQ&t=147s', 1, 22, 'PSV', 'UTR', 'PSV');

-- Goals against Sittard
INSERT INTO GOAL
VALUES
(1, 33, 'None', 'Right foot', 'https://www.youtube.com/watch?v=swbHPms5cFo', 2, 11, 'FOR', 'PSV', 'PSV'),
(2, 90, 'Hendrix', 'Header', 'https://www.youtube.com/watch?v=swbHPms5cFo', 2, 16, 'FOR', 'PSV', 'PSV');

-- Goals against Zwolle
INSERT INTO GOAL
VALUES
(1, 41, 'Lozano', 'Header', 'https://www.youtube.com/watch?v=ToXq3AV__rg', 3, 9, 'ZWO', 'PSV', 'PSV'),
(2, 93, 'Malen', 'Right foot', 'https://www.youtube.com/watch?v=ToXq3AV__rg', 3, 9, 'ZWO', 'PSV', 'PSV');

-- Goals against Willem II
INSERT INTO GOAL
VALUES
(1, 7, 'None', 'Left foot', 'https://www.youtube.com/watch?v=C9OBKCq61i4', 4, 8, 'PSV', 'WIL', 'PSV'),
(2, 13, 'Angelino', 'Right foot', 'https://www.youtube.com/watch?v=C9OBKCq61i4', 4, 17, 'PSV', 'WIL', 'PSV'),
(3, 35, 'None', 'Penalty', 'https://www.youtube.com/watch?v=C9OBKCq61i4', 4, 7, 'PSV', 'WIL', 'PSV'),
(4, 44, 'None', 'Left foot', 'https://www.youtube.com/watch?v=C9OBKCq61i4', 4, 4, 'PSV', 'WIL', 'PSV'),
(5, 49, 'de Jong', 'Left foot', 'https://www.youtube.com/watch?v=C9OBKCq61i4', 4, 4, 'PSV', 'WIL', 'PSV'),
(6, 72, 'Angelino', 'Header', 'https://www.youtube.com/watch?v=C9OBKCq61i4', 4, 17, 'PSV', 'WIL', 'PSV');

-- Goals against Den Haag
INSERT INTO GOAL
VALUES
(1, 18, 'None', 'Right foot', 'https://www.youtube.com/watch?v=Iw4D8Df6-ks', 5, 11, 'DHG', 'PSV', 'PSV'),
(2, 45, 'Angelino', 'Header', 'https://www.youtube.com/watch?v=Iw4D8Df6-ks', 5, 9, 'DHG', 'PSV', 'PSV'),
(3, 54, 'None', 'Penalty', 'https://www.youtube.com/watch?v=Iw4D8Df6-ks', 5, 7, 'DHG', 'PSV', 'PSV'),
(4, 73, 'Gutierrez', 'Right foot', 'https://www.youtube.com/watch?v=Iw4D8Df6-ks', 5, 11, 'DHG', 'PSV', 'PSV'),
(5, 75, 'Pereiro', 'Left foot', 'https://www.youtube.com/watch?v=Iw4D8Df6-ks', 5, 25, 'DHG', 'PSV', 'PSV'),
(6, 92, 'None', 'Right foot', 'https://www.youtube.com/watch?v=Iw4D8Df6-ks', 5, 17, 'DHG', 'PSV', 'PSV'),
(7, 95, 'None', 'Penalty', 'https://www.youtube.com/watch?v=Iw4D8Df6-ks', 5, 7, 'DHG', 'PSV', 'PSV');

-- Goals against Ajax
INSERT INTO GOAL
VALUES
(1, 21, 'None', 'Left foot', 'https://www.youtube.com/watch?v=DvU3PR9Hojk', 6, 7, 'PSV', 'AJX', 'PSV'),
(2, 24, 'Hendrix', 'Right foot', 'https://www.youtube.com/watch?v=DvU3PR9Hojk', 6, 9, 'PSV', 'AJX', 'PSV'),
(3, 35, 'Bergwijn', 'Left foot', 'https://www.youtube.com/watch?v=DvU3PR9Hojk', 6, 11, 'PSV', 'AJX', 'PSV');

-- Goals against Breda
INSERT INTO GOAL
VALUES
(1, 47, 'Angelino', 'Right foot', 'https://www.youtube.com/watch?v=iRJXWtacE84', 7, 9, 'NAC', 'PSV', 'PSV'),
(2, 92, 'Bergwijn', 'Right foot', 'https://www.youtube.com/watch?v=iRJXWtacE84', 7, 14, 'NAC', 'PSV', 'PSV');

-- Goals against Venlo
INSERT INTO GOAL
VALUES
(1, 34, 'Pereiro', 'Left foot', 'https://www.youtube.com/watch?v=D2Q0OKqiLxo', 8, 11, 'PSV', 'VVV', 'PSV'),
(2, 64, 'Bergwijn', 'Header', 'https://www.youtube.com/watch?v=D2Q0OKqiLxo', 8, 9, 'PSV', 'VVV', 'PSV'),
(3, 87, 'Bergwijn', 'Left foot', 'https://www.youtube.com/watch?v=D2Q0OKqiLxo', 8, 25, 'PSV', 'VVV', 'PSV'),
(4, 92, 'None', 'Penalty', 'https://www.youtube.com/watch?v=D2Q0OKqiLxo', 8, 11, 'PSV', 'VVV', 'PSV');

-- Nationality of PSV captain
INSERT INTO COUNTRY
VALUES(1, 'The Netherlands', 'Europe');
INSERT INTO PLAYER_NATIONALITY
VALUES (9, 1, 'PSV');

-- Players from PSV who scores
INSERT INTO PLAYER
(plnb, plfname, plonames, pllname, pldob, plposition, plnbgames, plnbgoals, plnbassists, plredcards, plyellowcards, TEAMPL_teamcode)
VALUES
(7,'Gaston', 'Rodrigo Lopez', 'Pereiro', 19950611, 'Midfielder', 14, 7, 3, 0, 2, 'PSV'),
(11,'Hirving', 'Rodrigo Bahena', 'Lozano', 19950730, 'Forward', 14, 10, 5, 0, 2, 'PSV'),
(25,'Erick', 'Gabriel Galaviz', 'Gutierrez', 19950615, 'Midfielder', 7, 3, 2, 0, 0, 'PSV');

INSERT INTO PLAYER
(plnb, plfname, pllname, pldob, plposition, plnbgames, plnbgoals, plnbassists, plredcards, plyellowcards, TEAMPL_teamcode)
VALUES
(17,'Steven', 'Bergwijn', 19971008, 'Winger', 13, 6, 7, 0, 2, 'PSV'),
(22,'Denzel', 'Dumfries', 19960418, 'Defender', 14, 2, 1, 0, 2, 'PSV'),
(16,'Dante', 'Rigo', 19981211, 'Midfielder', 3, 1, 0, 0, 0, 'PSV'),
(8,'Jorrit', 'Hendrix', 19950206, 'Midfielder', 14, 1, 2, 0, 2, 'PSV'),
(4,'Nick', 'Viergever', 19890803, 'Defender', 14, 2, 1, 0, 2, 'PSV'),
(14,'Donyell', 'Malen', 19990119, 'Forward', 14, 3, 2, 0, 0, 'PSV');

-- Companies sponsoring PSV
INSERT INTO COMPANY
VALUES 
(1, 'Energiedirect', 'Willemsplein 4', '5211 AK', 's-Hertogenbosch', 'Energy'),
(2, 'AeroMexico', 'Centro Comercial Parque Tezontle', '03100', 'Mexico-city', 'Airline'),
(3, 'Bam', 'Runnenburg 9', '3981 AZ', 'Bunnik', 'Construction'),
(4, 'BCD Travel', '30 Eastbourne Terrace', 'W2 6LA', 'London', 'Travel management'),
(5, 'Coca-cola', '1 Coca Cola Plz NW', 'GA 30313', 'Atlanta', 'Soft Drink'),
(6, 'Elten Safety Shoes', 'Ostwall 7-13', '47589', 'Uedem', 'Shoe manufacturing'),
(7, 'Freo', 'Vestdijk 51', '5611 CA', 'Eindhoven', 'Financial service'),
(8, 'Heijmans', 'Hofkamp 1', '6161 DC', 'Geleen', 'Construction'),
(9, 'Markteffect', 'Begijnenhof 4-6', '5611 EL', 'Eindhoven', 'Marketing Consulting'),
(10, 'PHC', 'Flight Forum 1700', '5657 EZ', 'Eindhoven', 'telecom service'),
(11, 'Rabobank', 'Croeselaan 18', '3521 CB', 'Utrecht', 'Banking');

-- PSV Sponsors
INSERT INTO SPONSORING
VALUES(1, 20160701, 20210701, 6500000, 1, 'PSV');

INSERT INTO SPONSORING
(sid, sdatesigning, sendcontract, COMPANYSP_cid, TEAMSP_teamcode)
VALUES
(2, 20180209, 20190701, 2, 'PSV'),
(5, 20140901, 20201222, 5, 'PSV'),
(7, 20110101, 20180701, 7, 'PSV'),
(9, 20180621, 20210621, 9, 'PSV');

INSERT INTO SPONSORING
(sid, sendcontract, COMPANYSP_cid, TEAMSP_teamcode)
VALUES
(3, 20220701, 3, 'PSV'),
(10, 20210814, 10, 'PSV'),
(11, 20210614, 11, 'PSV');

INSERT INTO SPONSORING
(sid, sdatesigning, COMPANYSP_cid, TEAMSP_teamcode)
VALUES(4, 20140815, 4, 'PSV');

INSERT INTO SPONSORING
(sid, COMPANYS_cid, TEAMSP_teamcode)
VALUES
(6, 6, 'PSV'),
(8, 8, 'PSV');

-- Companies' logos

INSERT INTO LOGO_COMPANY
VALUES 
(1, 'Energiedirect.jpg', 20180101, 1),
(2, 'AeroMexico.jpg', 20180102, 2),
(3, 'Bam.jpg', 20180103, 3),
(4, 'BCD_Travel.jpg', 20180104, 4),
(5, 'Coca-cola.jpg', 20180105, 5),
(6, 'Elten_Safety_Shoes.jpg', 20180106, 6),
(7, 'Freo.jpg', 20180107, 7),
(8, 'Heijmans.jpg', 20180108, 8),
(9, 'Marketeffect.jpg', 20180109, 9),
(10, 'PHC.jpg', 20180110, 10),
(11, 'Rabobank.jpg', 20180111, 11);
