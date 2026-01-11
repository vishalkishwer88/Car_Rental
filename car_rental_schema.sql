Create Database Car_Rental_System
GO
USe Car_Rental_System
GO
Create Table Customer(
Customer_id int identity(1,1),
First_name varchar(50) Not Null,
Last_name varchar(50) Not Null,
Email varchar(50) Unique,
Phone_Number varchar(25),
Cust_Address varchar(200),
Primary key (Customer_id)
)
Go
Create Table Car(
Car_id int identity(1,1),
Car_model varchar(255) NOT NULL,
Car_make varchar(255) NOT NULL,
Car_year int,
Daily_rate Decimal(10,2) NOT NULL,
Fuel_type varchar(12),
is_available Bit NOT NULL default 1,
Primary key (Car_id)
)
GO
Create Table Rental(
Rental_id int identity(1,1),
Start_date date NOT NULL,
End_date date NOT NULL,
Rental_date  Decimal(10,2) NOT NULL,
Insurance_charge  Decimal(10,2) NOT NULL default 0,
Fuel_charge  Decimal(10,2) NOT NULL default 0,
Car_id int NOT NULL,
Customer_id int NOT NULL,
Primary key (Rental_id),
Constraint Fk_Car_id Foreign key (Car_id) References Car (Car_id),
Constraint Fk_Customer_id Foreign key (Customer_id) References Customer (Customer_id)
)
GO
Create Table Maintenance(
Maintenance_id int identity(1,1),
Car_Type varchar(50),
Description varchar(255),
Maintenance_Cost decimal(10,2) NOT NULL,
Maintenance_Date Date NOT NULL,
Car_id int Not NULL,
Foreign key (Car_id) References Car(Car_id) 
)
GO