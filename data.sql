-- SQLite
SELECT *
FROM Authors;


INSERT INTO Authors
VALUES(NULL,'Sita Sharma','Female','Ghorahi','abc@gmail.com','2000/12/29');

SELECT Name FROM Authors WHERE Address='Ghorahi'

CREATE TABLE Publishers(
    ID int,
    Name varchar(255),
    Address varchar(255),
    Contact varchar(10),
    RegistrationNo nvarchar(100)
);


CREATE TABLE AuthorDetails(
    ID int PRIMARY KEY,
    Education varchar(255),
    Publications nvarchar(400),
    Organization varchar(100),
    AuthorDetailId integer,
    FOREIGN KEY(AuthorDetailId) REFERENCES Authors(Id)
);



drop table AuthorDetails


<<<<<<< HEAD
CREATE TABLE Books(
ID int PRIMARY KEY,
Title nvarchar(200),
Edition nvarchar(200),
Price int,
ISBN nvarchar(50),
Publication DATE
);

INSERT INTO Books 
VALUES(1,'Java','Second Edition',500,'256-983','1999'),
(2,'Data Mining','Third Edition',800,'345-269','2000');

DROP TABLE Authors;

CREATE TABLE Authors(
ID int PRIMARY KEY,
Name varchar(200),
Gender varchar(10),
Address nvarchar(100),
Email varchar(50),
Dob nvarchar(50),
AuthorsId int,
FOREIGN KEY(AuthorsId) REFERENCES Books(Id)
);

INSERT INTO Authors
VALUES(1, 'Bhupendra Singh Saud', 'Male', 'Nepal', 'kecpublication@gmail.com', '1980-03-09', 1),
    (2, 'Arjun Saud', 'Male', 'Nepal', 'kecpublication@gmail.com', '1985-09-04', 2);
INSERT INTO Authors
VALUES(3, 'Arjun Saud', 'Male', 'Nepal', 'kecpublication@gmail.com', '1980-03-09', 1);

SELECT Books.Title, Authors.Name
FROM Books
JOIN Authors ON Books.Id = Authors.AuthorsId;

SELECT Books.Title, COUNT(Authors.Id) AS AuthorCount
FROM Books
LEFT JOIN Authors ON Books.Id = Authors.AuthorsId
GROUP BY Books.Id, Books.Title;

SELECT Authors.Name, Books.Title
FROM Authors
JOIN Books ON Authors.AuthorsId = Books.Id;






=======
>>>>>>> 6ce348f1771620da8d6ac6d509a08dd07a9a9862
