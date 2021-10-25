CREATE TABLE Users (
id NUMERIC  UNIQUE NOT NULL, 
name TEXT NOT NULL, 
password Text NOT NULL,  
last_name Text,
phone_number NUMERIC NOT NULL,
email TEXT,
address TEXT NOT NULL,
image TEXT,
CONSTRAINT User_pk PRIMARY KEY (id)
);


CREATE TABLE Administrador(
id_admin INTEGER PRIMARY key AUTOINCREMENT UNIQUE, 
id_user NUMERIC NOT NULL,
FOREIGN KEY (id_user) REFERENCES Users(id)
);


CREATE TABLE SuperAdministrador(
id_sup_admin INTEGER PRIMARY KEY  AUTOINCREMENT UNIQUE,
id_admin INTEGER NOT NULL,
FOREIGN KEY (id_admin) REFERENCES Administrador(id_admin)
);

CREATE TABLE Client(
id_client INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
credit_card NUMERIC NOT NULL,
tipe_credit_card TEXT NOT NULL,
id_user NUMERIC NOT NULL,
FOREIGN KEY (id_user) REFERENCES Users(id_user)
);

CREATE TABLE Dishes(
id_dishes INTEGER UNIQUE NOT NULL,
name TEXT  NOT NULL,
description TEXT,
precio NUMERIC NOT NULL,
PRIMARY KEY (id_dishes)
);

CREATE TABLE Purchase(
id_purchase INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
name TEXT  NOT NULL,
description TEXT,
id_client INTEGER NOT NULL,
id_dishes INTEGER NOT NULL,
FOREIGN KEY (id_client) REFERENCES Client(id_client),
FOREIGN KEY (id_dishes) REFERENCES Dishes(id_dishes)
);

CREATE TABLE RequestDishes(
id_request_dishes INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
name TEXT  NOT NULL,
description TEXT,
quantity INTEGER,
value NUMERIC NOT NULL,
id_client INTEGER NOT NULL,
id_dishes INTEGER NOT NULL,
FOREIGN KEY (id_client) REFERENCES Client(id_client),
FOREIGN KEY (id_dishes) REFERENCES Dishes(id_dishes)
);

CREATE TABLE QualifyDishes(
id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
qualify INTEGER NOT NULL,
date NUMERIC NOT NULL,
time NUMERIC NOT NULL,
id_client INTEGER NOT NULL,
id_dishes INTEGER NOT NULL,
FOREIGN KEY (id_client) REFERENCES Client(id_client),
FOREIGN KEY (id_dishes) REFERENCES Dishes(id_dishes)
); 


CREATE TABLE CommentDishes(
id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
comment TEXT NOT NULL,
date NUMERIC NOT NULL,
time NUMERIC NOT NULL,
id_client INTEGER NOT NULL,
id_dishes INTEGER NOT NULL,
FOREIGN KEY (id_client) REFERENCES Client(id_client),
FOREIGN KEY (id_dishes) REFERENCES Dishes(id_dishes)
);





/**Ingreso de datos iniciales**/

--Departamento
--INSERT INTO Departmen(id, name) VALUES (1, "Antioquia");


--subregiones
/*
INSERT INTO Subregions(id, name, id_department) VALUES (0, "sin definir", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Bajo Cauca", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Magdalena Medio", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Nordeste", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Norte", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Occidente", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Oriente", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Suroeste", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Urabá", 1);
INSERT INTO Subregions(name, id_department) VALUES ("Valle de Aburrá", 1);
*/

--Consultas


/*
SELECT * from Municipality m 

select *
FROM Artifact a inner join Municipality m on a.id_municipality = m.id 



select a.id, a.name, a.image, a.id_municipality, m.name, m.id_subregions 
FROM Artifact a inner join Municipality m on a.id_municipality = m.id WHERE m.id_subregions = "8"

select COUNT(*) FROM Artifact a inner join Municipality m on a.id_municipality = m.id WHERE m.id_subregions = "8"

*/