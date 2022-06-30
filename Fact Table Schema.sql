USE [JobPostingDW]
GO

/****** Object:  Table [dbo].[FactJobPosting]    Script Date: 29/04/2022 1:24:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactJobPosting](
	[PostId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[JobTypeID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
	[DateID] [int] NOT NULL,
	[JobTitleID] [int] NOT NULL,
	[JobCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactJobPosting]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[DimCategory] ([CategoryID])
GO

ALTER TABLE [dbo].[FactJobPosting]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[DimCompany] ([CompanyID])
GO

ALTER TABLE [dbo].[FactJobPosting]  WITH CHECK ADD FOREIGN KEY([DateID])
REFERENCES [dbo].[DimDate] ([DateID])
GO

ALTER TABLE [dbo].[FactJobPosting]  WITH CHECK ADD FOREIGN KEY([JobTitleID])
REFERENCES [dbo].[DimJobTitle] ([JobTitleID])
GO

ALTER TABLE [dbo].[FactJobPosting]  WITH CHECK ADD FOREIGN KEY([JobTypeID])
REFERENCES [dbo].[DimJobType] ([JobTypeID])
GO

ALTER TABLE [dbo].[FactJobPosting]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[DimLocation] ([LocationID])
GO


