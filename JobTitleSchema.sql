USE [JobPostingDW]
GO

/****** Object:  Table [dbo].[DimJobTitle]    Script Date: 29/04/2022 1:23:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimJobTitle](
	[JobTitleID] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[JobTitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


