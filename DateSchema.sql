USE [JobPostingDW]
GO

/****** Object:  Table [dbo].[DimDate]    Script Date: 29/04/2022 1:22:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDate](
	[DateID] [int] IDENTITY(1,1) NOT NULL,
	[FullDateDescription] [varchar](100) NOT NULL,
	[Post_Day] [varchar](100) NOT NULL,
	[Post_Month] [varchar](50) NOT NULL,
	[Post_Quarter] [varchar](100) NOT NULL,
	[Post_Year] [varchar](50) NOT NULL,
	[Post_Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


