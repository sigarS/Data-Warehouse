Use master
Go

PRINT '';
PRINT '*** Dropping Database';
GO

IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = N'JobPostingDW')
DROP DATABASE JobPostingDW;
GO

PRINT '';
PRINT '*** Creating Database';
GO

Create database JobPostingDW
Go

Use JobPostingDW
Go

PRINT '';
PRINT '*** Creating Table DimCategory';
GO

Create table DimCategory
(
CategoryID int primary key identity,
CategoryName varchar(50),
)
Go

PRINT '';
PRINT '*** Creating Table DimCompany';
GO

Create table DimCompany
(
CompanyID int primary key identity,
CompanyName varchar(100)
)
Go

PRINT '';
PRINT '*** Creating Table DimDate';
GO

Create table DimDate
(
DateID int primary key identity ,
FullDateDescription varchar(100)  not null,
Post_Day varchar(100)  not null,
Post_Month varchar(50) not null,
Post_Quarter varchar(100)  not null,
Post_Year varchar(50)  not null,
Post_Date Date  not null
)
Go

PRINT '';
PRINT '*** Creating Table DimJobType';
GO

Create table DimJobType
(
JobTypeID int primary key identity,
JobType varchar(100) not null,

)

Go

PRINT '';
PRINT '*** Creating Table DimLocation';

GO

Create table DimLocation
(
LocationID int primary key identity,
City varchar(100)  not null,
Country varchar(100)  not null,
)
Go

PRINT '';
PRINT '*** Creating Table DimJobTitle';
GO

Create table DimJobTitle
(
JobTitleID int primary key identity,
JobTitle varchar(100)  not null,

)


Go

PRINT '';
PRINT '*** Creating Table FactJobPosting';
GO

Create Table FactJobPosting
(
PostId bigint primary key identity,
CategoryID int not null,
CompanyID int not null,
JobTypeID int not null,
LocationID int not null,
DateID int not null,
JobTitleID int not null,
JobCount int not null,
FOREIGN KEY (CategoryID)REFERENCES DimCategory(CategoryID),
FOREIGN KEY (CompanyID)REFERENCES DimCompany(CompanyID),
FOREIGN KEY (DateID)REFERENCES DimDate(DateID),
FOREIGN KEY (LocationID)REFERENCES DimLocation(LocationID),
FOREIGN KEY (JobTypeID)REFERENCES DimJobType(JobTypeID),
FOREIGN KEY (JobTitleID)REFERENCES DimJobTitle(JobTitleID),
)
Go

