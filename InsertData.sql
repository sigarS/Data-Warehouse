
 
 :setvar SqlSamplesSourceDataPath "C:\Users\jerem\Desktop\UWA\2022\UWA_SEM1\DataWarehousing\Project1\"



:setvar DatabaseName "JobPostingDW"

/* Execute the script to insert data
 */

BULK INSERT [JobPostingDW].[dbo].[DimCategory] FROM '$(SqlSamplesSourceDataPath)DimCategory.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
	FIRSTROW = 2,
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

BULK INSERT [JobPostingDW].[dbo].[DimCompany] FROM '$(SqlSamplesSourceDataPath)DimCompany.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
	FIRSTROW = 2,
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

BULK INSERT [JobPostingDW].[dbo].[DimDate] FROM '$(SqlSamplesSourceDataPath)DimDate.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
	FIRSTROW = 2,
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

BULK INSERT [JobPostingDW].[dbo].[DimJobType] FROM '$(SqlSamplesSourceDataPath)DimJobType.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
	FIRSTROW = 2,
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);


BULK INSERT [JobPostingDW].[dbo].[DimLocation] FROM '$(SqlSamplesSourceDataPath)DimLocation.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
	FIRSTROW = 2,
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);



BULK INSERT [JobPostingDW].[dbo].[DimJobTitle] FROM '$(SqlSamplesSourceDataPath)DimJobTitle.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
	FIRSTROW = 2,
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);


BULK INSERT [JobPostingDW].[dbo].[FactJobPosting] FROM '$(SqlSamplesSourceDataPath)FactTable.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
	FIRSTROW = 2,
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

