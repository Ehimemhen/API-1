Use Master
Go
If Exists (Select * from sys.databases where name = 'DBMobile_App')
DROP DATABASE DBMobile_App
Go


Create Database DBMobile_App
Go

Use DBMobile_App


CREATE TABLE About_Malaria
(
About_Malaria_ID int Identity (1,1) Primary Key Not Null,
Malaria_Description varchar(max),

)
Go
CREATE TABLE Cause
(
Cause_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Cause_Name varchar (max) ,
Cause_Description varchar (max) 

)
GO
CREATE TABLE Treatment
(
Treatment_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Treatment_Name varchar (max)


)
GO

CREATE TABLE User_Role
(
User_Role_ID int Identity (1,1) Primary Key Not Null,
User_Role_Description varchar (100),
)
GO
CREATE TABLE [User]
(
[User_ID] int Identity  (1,1) Primary Key Not Null,
User_Role_ID int references User_Role (User_Role_ID) not null,
[User_Name] varchar (50),
User_Password varchar (50) , 
Email varchar (50) ,
[GUID] varchar (200) ,
GUID_Expiry datetime 
)
GO
CREATE TABLE Symptom
(
Symptom_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Symptom_Name varchar (max) ,
Symptom_Description varchar (max) , 
Sign_Name varchar (max) ,
Sign_Description varchar (max)    
)
GO
CREATE TABLE Prevention
(
Prevention_ID int Identity (1,1) primary key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Prevention_Method varchar (max) ,
)
GO




CREATE TABLE [Post_Update]
(
Post_Update_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Post_Description varchar (max) ,

)
GO



CREATE TABLE FAQ
(
FAQ_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
FAQ_Question varchar(max),
FAQ_Answer varchar(max) 
)
GO

CREATE TABLE Publication
(
Publication_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Publication_Description varchar (max),
Publication_Link varchar(max)
)
GO

GO
CREATE TABLE Statistic
(
Statistic_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Malaria_Case varchar (max) not null,
Malaria_Incidence varchar (max) not null,
Malaria_Mortality_Percentage varchar (max) not null
)
GO
CREATE TABLE Malaria_Risk_Zone
(
Malaria_Risk_Zone_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Risk_Zone_Location varchar(max),
Risk_Zone varchar(max) ,
Severity varchar(max) 
)
GO



CREATE TABLE Help_Line
(
Help_Line_ID int Identity (1,1) Primary Key Not Null,
About_Malaria_ID int references About_Malaria(About_Malaria_ID),
Help_Line_Contact varchar (max) not null,
Help_Line_Practioner varchar (max) not null
)
GO




----------------------------------INSERT INTO------------------------------------------
--Insert into Cause
INSERT INTO Cause (Cause_Name,Cause_Description) values  ('plasmodium parasite','Is a genius of unicellular eukaryotes that are obligate parasites of vertebrates and insects')
INSERT INTO Cause (Cause_Name,Cause_Description) values ('Plasmodium falciparum','The most common type of parasite mainly found in Africa responsible for most malaria deaths')
INSERT INTO Cause (Cause_Name,Cause_Description) values ('Plasmodium vivax','Is a protozoal parasite and a human pathogen')
INSERT INTO Cause (Cause_Name,Cause_Description) values ('Plasmodium ovale','Is a species of parasitic protozoa that causes tertian malaria in humans')
INSERT INTO Cause (Cause_Name,Cause_Description) values ('Plasmodium malariae','Is a parasitic protozoa that causes malaria in humans')
INSERT INTO Cause (Cause_Name,Cause_Description) values ('Plasmodium knowlesi','Is a primate malaria pasite commonly found in Southeast Asia')

Go


-- Insert into Symptom_Sign
INSERT INTO Symptom (Symptom_Name, Symptom_Description,Sign_Name ,Sign_Description) values ('nausea','Nausea can be a precursor to vomiting the contents of the stomach.','high fever','A temporary increase in average body temperature of 37�C.')
INSERT INTO Symptom (Symptom_Name, Symptom_Description,Sign_Name ,Sign_Description) values ('diarrhea','Diarrhea is loose, watery stools (bowel movements)','Abdominal cramps.','Pain from inside the abdomen or the outer muscle wall, ranging from mild and temporary to severe and requiring emergency care')
INSERT INTO Symptom (Symptom_Name, Symptom_Description,Sign_Name ,Sign_Description)   values ('headache','A painful sensation in any part of the head, ranging from sharp to dull, that may occur with other symptoms.','vomiting,',' Vomiting, or emesis, is the expelling from the stomach of undigested food through the mouth')

Go

-- Insert into Treatment

INSERT INTO Treatment (Treatment_Name) values ('Anti-Parasite')
INSERT INTO Treatment (Treatment_Name) values ('Anti-biotics')

Go

---Insert into Prevention Table
Insert into Prevention (Prevention_Method) values ('Awareness of risk ')
Insert Into Prevention (Prevention_Method) values('Bite prevention')
insert into Prevention (Prevention_Method) values('Diagnosis')
go
----Insert into FAQ

INSERT INTO FAQ (FAQ_Question,FAQ_Answer) values('What is the first sign of malaria?','Some people who have malaria experience cycles of malaria "attacks." An attack usually starts with shivering and chills, followed by a high fever, followed by sweating and a return to normal temperature. Malaria signs and symptoms typically begin within a few weeks after being bitten by an infected mosquito.')
INSERT INTO FAQ (FAQ_Question,FAQ_Answer) values('Do malaria patients need to be isolated?','Isolation is not necessary with patients with malaria and they do not need to be excluded from either work or school, as the disease is not contagious. If you do have a history of malaria you should not donate blood or organs.')
insert into FAQ (FAQ_Question,FAQ_Answer) values('Can malaria go away on its own?','With proper treatment, symptoms of malaria usually go away quickly, with a cure within two weeks. Without proper treatment, malaria episodes (fever, chills, sweating) can return periodically over a period of years. After repeated exposure, patients will become partially immune and develop milder disease.')
insert into FAQ (FAQ_Question,FAQ_Answer) values('Can you get malaria from another person?','Malaria is not contagious and you cant catch it from physical contact with someone who has it. The malaria parasite is not in an infected persons saliva and it is not passed on from one person to another. The only way you can catch malaria from a person is through blood transfusions or organ transplants.')
insert into FAQ (FAQ_Question,FAQ_Answer) values('How do you detect malaria?','Specifically, these tests can detect severe anemia, hypoglycemia, renal failure, hyperbilirubinemia, and acid-base disturbances. Malaria parasites can be identified by examining under the microscope a drop of the patients blood, spread out as a �blood smear� on a microscope slide.')
insert into FAQ (FAQ_Question,FAQ_Answer) values('Is malaria curable?','Malaria disease can be categorized as uncomplicated or severe (complicated). In general, malaria is a curable disease if diagnosed and treated promptly and correctly. All the clinical symptoms associated with malaria are caused by the asexual erythrocytic or blood stage parasites.')


go
----Insert Into Publication
INSERT Into Publication (Publication_Description,Publication_Link) values('Guidelines for malaria vector control','https://www.who.int/malaria/publications/atoz/9789241550499/en/')
Insert into Publication (Publication_Description,Publication_Link) values('World malaria report 2018', 'https://www.who.int/malaria/publications/world-malaria-report-2018/report/en/')
go

---Insert into User Role
insert into User_Role values('Admin')
insert into User_Role values('Manager')
go 

---Insert into About Malaria
Insert into About_Malaria(Malaria_Description) values('A disease caused by a plasmodium parasite, transmitted by the bite of infected mosquitoes.')

Go

---Insert into Malaria_Risk_Zones
Insert Into Malaria_Risk_Zone (Risk_Zone_Location,Risk_Zone,Severity) Values ('Southern Africa, West Africa, East Africa and South America', 'Brazil, Nigeria, Malawi and Ghana', 'High')

Go

INSERT into Post_Update(Post_Description) values ('The Latest Malaria News, in 60 Seconds.
Ministerial meeting regarding malaria is arranged for the World Health Assembly, the �Malaria Vaccines for the World� event takes place in Oxford and submissions open for the �Malaria in Melbourne� conference.')


---Insert into Statistics
insert into Statistic (Malaria_Case,Malaria_Incidence,Malaria_Mortality_Percentage) values('Nearly half of the world population is at risk of malaria','In 2015, there were roughly 212 million malaria cases and an estimated 429 000 malaria deaths',' Increased prevention and control measures have led to a 29% reduction in malaria mortality rates globally since 2010')

Go


---Insert into Malaria help line

insert into Help_Line (Help_Line_Contact,Help_Line_Practioner) values('USA- +1 240 330 1568',' UN')
insert into Help_Line (Help_Line_Contact,Help_Line_Practioner) values('SA- 013 7355 638','HPCSA')

GO
