USE [master]
GO
/****** Object:  Database [LygusDB]    Script Date: 9/3/2019 4:21:30 PM ******/
CREATE DATABASE [LygusDB]
GO

USE [LygusDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatBotResponses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FarmName] [varchar](50) NULL,
	[BugDateSeen] [date] NULL,
	[BugType] [varchar](50) NULL,
	[BugDensity] [int] NULL,
	[BugLifecycle] [varchar](50) NULL,
	[BugInOtherFields] [varchar](50) NULL,
	[BugVacOwnership] [varchar](50) NULL,
	[LastBugVacDateTime] [datetime] NULL,
	[ResponderPhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK_ChatBotResponses] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farm]    Script Date: 9/3/2019 4:21:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farm](
	[ID] [int] NULL,
	[FarmName] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[BotTesting] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PestPlan]    Script Date: 9/3/2019 4:21:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PestPlan](
	[PlanID] [int] IDENTITY(1,1) NOT NULL,
	[FarmID] [int] NULL,
	[GenerationDateTime] [datetime] NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED
(
	[PlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PestPlanStep]    Script Date: 9/3/2019 4:21:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PestPlanStep](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NULL,
	[BeginDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
 CONSTRAINT [PK_PlanSteps] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeatherData]    Script Date: 9/3/2019 4:21:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherData](
	[ForecastDateTime] [datetime] NOT NULL,
	[Speed] [float] NULL,
	[Direction] [float] NULL,
	[Rain] [float] NULL,
 CONSTRAINT [PK_WeatherData] PRIMARY KEY CLUSTERED
(
	[ForecastDateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LygusDB] SET  READ_WRITE
GO
