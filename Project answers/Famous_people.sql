/* Create table about the people and what they do here */
create table billionares(
    id integer primary key autoincrement,
    fullname text,
    age integer,
    nationality text
    );

INSERT INTO billionares (fullname, age, nationality) VALUES ("Jeff Bezos", 58, "US");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Bill Gates", 66, "US");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Warren Buffet", 91, "US");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Bernard Arnault", 73, "France");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Mark Zucherberg", 38, "US");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Ratan Tata", 84, "INDIA");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Gautam Adani", 60, "INDIA");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Mukesh Ambani", 65, "INDIA");

CREATE table wealth (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    billionare_id INTEGER,
    net_worth TEXT,
    source_wealth TEXT);
    
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (1, "168 billion", "Amazon");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (2, "114.2 billion", "Microsoft");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (3, "104.6 billion", "Berkshire Hathaway");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (4, "172.2 billion", "LVMH");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (5, "68.6 billion", "Facebook");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (6, "1 billion", "TATA Sons");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (7, "131.1 billion", "Adani Group");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (8, "95.6 billion", "Reliance");

/*Return total net worth for each billionare*/
SELECT b.fullname, w.net_worth
FROM billionares b
JOIN wealth w
ON b.id = w.billionare_id;
