1 - SELECT * FROM `oscar` WHERE name = 'Natalie Portman' (três)
2 - SELECT * FROM `oscar` WHERE name = 'Natalie Portman' AND winner = 'true' (um)
3 - SELECT * FROM `oscar` WHERE name = 'Amy Adams' AND winner = 'true' (nenhum)
4 - SELECT * FROM `oscar` WHERE name LIKE '%Lucas%' AND winner = 'true' (3 porém só o sobrenome)
5 - SELECT * FROM `oscar` WHERE name LIKE '%Toy Story 3%' AND winner = 'true'( 2 vezes em 2011)
6 - SELECT COUNT(category) FROM oscar WHERE category LIKE '%film' AND winner = 'true'; (melhor filme:83) (49)
7 - SELECT * FROM oscar WHERE category LIKE '%actress' AND winner = 'true' AND ceremony = '1' ( Janet Gaynor - 1928 )
8 - winner

9 - SELECT * FROM `oscar` WHERE film LIKE '%Crash%' AND winner = 'true' (edição: 78 - 2006)
10 - Pulp Fiction

11 - INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Quentin Tarantino','Pulp Fiction','Best Movie','1995','1994','1995','true');

12- SELECT * FROM `oscar` WHERE film = 'Central do Brasil' não aparece


13- opinião sobreo filme

14- INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Makoto Shinkai','Your Name','Best Animation','205','2016','2017','true');

INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Danny Boyle','steve Jobs','Best Movie','204','2015','2016','true');

INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Christopher Nolan','O Cavaleiro das Trevas','Best Movie','196','2008','2008','true');

INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Ridley Scott','Casa Guccie','Best Movie','212','2022','2022','true');

INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Bong Joon-Ho','Expresso do Amanhã','Best Movie','203','2014','2015','true');

INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Phil Lord & Christopher Miller','Uma Aventura Lego','Best Movie','203','2014','2014','true');

INSERT INTO oscar (name,film,category,ceremony,year_film,year_ceremony, winner) VALUES ('Clint Eastwood','Cry Macho','Best Actor','211','2021','2021','true');

15- incluí o Best Dance

16- SELECT * FROM oscar WHERE winner = 'true' AND ceremony = '1' (1928)

17- SELECT * FROM oscar WHERE category LIKE '%actor%' AND winner = 'true' AND year_ceremony =  '2003'
SELECT * FROM oscar WHERE category LIKE '%actress%' AND winner = 'true' AND year_ceremony =  '2003'(ACTRESS IN A LEADING ROLE - Nicole Kidman - The Hours) (ACTRESS IN A SUPPORTING ROLE - Catherine Zeta-Jones - Chicago)
SELECT * FROM oscar WHERE category LIKE '%film%' AND winner = 'true' AND year_ceremony =  '2003'

18- INSERT INTO oscar (name,category,ceremony,year_ceremony, winner) VALUES ('Pryanka Chopra','Best actress','215','2022','false');

INSERT INTO oscar (name,category,ceremony,year_ceremony, winner) VALUES ('Ahd Kamel','Best actress','215','2022','false');

INSERT INTO oscar (name,category,ceremony,year_ceremony, winner) VALUES ('Dian Sastro','Best actress','215','2022','false');

INSERT INTO oscar (name,category,ceremony,year_ceremony, winner) VALUES ('Lyana Jasmay','Best actress','215','2022','false');

INSERT INTO oscar (name,category,ceremony,year_ceremony, winner) VALUES ('Jun Ji-Hyun','Best actress','215','2022','false');

INSERT INTO oscar (name,category,ceremony,year_ceremony, winner) VALUES ('Jaya Ahsan','Best actress','215','2022','false');

INSERT INTO oscar (name,category,ceremony,year_ceremony, winner) VALUES ('Davika Horne','Best actress','215','2022','false');

19 - que prêmio merece

20 - altertable