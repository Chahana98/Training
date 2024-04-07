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


