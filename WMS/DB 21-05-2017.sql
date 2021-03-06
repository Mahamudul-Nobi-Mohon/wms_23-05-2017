USE [master]
GO
/****** Object:  Database [WAREHOUSE]    Script Date: 05/21/2017 18:02:05 ******/
CREATE DATABASE [WAREHOUSE] ON  PRIMARY 
( NAME = N'WAREHOUSE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WAREHOUSE.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WAREHOUSE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WAREHOUSE_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WAREHOUSE] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WAREHOUSE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WAREHOUSE] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WAREHOUSE] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WAREHOUSE] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WAREHOUSE] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WAREHOUSE] SET ARITHABORT OFF
GO
ALTER DATABASE [WAREHOUSE] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [WAREHOUSE] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WAREHOUSE] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [WAREHOUSE] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WAREHOUSE] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WAREHOUSE] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WAREHOUSE] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WAREHOUSE] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WAREHOUSE] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WAREHOUSE] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WAREHOUSE] SET  DISABLE_BROKER
GO
ALTER DATABASE [WAREHOUSE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WAREHOUSE] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WAREHOUSE] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WAREHOUSE] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WAREHOUSE] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WAREHOUSE] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [WAREHOUSE] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [WAREHOUSE] SET  READ_WRITE
GO
ALTER DATABASE [WAREHOUSE] SET RECOVERY SIMPLE
GO
ALTER DATABASE [WAREHOUSE] SET  MULTI_USER
GO
ALTER DATABASE [WAREHOUSE] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WAREHOUSE] SET DB_CHAINING OFF
GO
USE [WAREHOUSE]
GO
/****** Object:  User [arif]    Script Date: 05/21/2017 18:02:05 ******/
CREATE USER [arif] FOR LOGIN [datasale] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[LoginTime] [varchar](50) NOT NULL,
	[LogoutTime] [varchar](50) NULL,
	[ComputerName] [varchar](50) NULL,
	[MacAddress] [varchar](50) NULL,
	[LocalIpAddress] [varchar](50) NOT NULL,
	[RealIpAddress] [varchar](50) NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserLog] ON
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (1, N'admin', 420, N'May 21 2017 12:12PM', N'May 21 2017 12:12PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (2, N'admin', 100, N'May 21 2017 12:14PM', N'May 21 2017 12:14PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (3, N'admin', 100, N'May 21 2017 12:19PM', N'May 21 2017 12:19PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (4, N'admin', 100, N'May 21 2017 12:19PM', N'May 21 2017 12:19PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (5, N'admin', 100, N'May 21 2017 12:20PM', N'May 21 2017 12:20PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (6, N'admin', 100, N'May 21 2017 12:25PM', N'May 21 2017 12:25PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (7, N'admin', 100, N'May 21 2017 12:31PM', N'May 21 2017 12:31PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (8, N'admin', 100, N'May 21 2017 12:33PM', N'May 21 2017 12:33PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (9, N'admin', 100, N'May 21 2017 12:36PM', N'May 21 2017 12:36PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (10, N'admin', 100, N'May 21 2017 12:46PM', N'May 21 2017 12:46PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (11, N'admin', 100, N'May 21 2017 12:50PM', N'May 21 2017 12:50PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (12, N'admin', 100, N'May 21 2017 12:51PM', N'May 21 2017 12:51PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (13, N'admin', 100, N'May 21 2017 12:54PM', N'May 21 2017 12:54PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (14, N'admin', 100, N'May 21 2017 12:55PM', N'May 21 2017 12:55PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (15, N'admin', 100, N'May 21 2017 12:57PM', N'May 21 2017 12:57PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (16, N'admin', 100, N'May 21 2017 12:58PM', N'May 21 2017 12:58PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (17, N'admin', 100, N'May 21 2017  1:39PM', N'May 21 2017  1:39PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (18, N'admin', 100, N'May 21 2017  1:40PM', N'May 21 2017  1:40PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (19, N'admin', 100, N'May 21 2017  1:40PM', N'May 21 2017  1:40PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (20, N'admin', 100, N'May 21 2017  1:41PM', N'May 21 2017  1:41PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (21, N'admin', 100, N'May 21 2017  1:48PM', N'May 21 2017  1:48PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (22, N'admin', 100, N'May 21 2017  2:31PM', N'May 21 2017  2:31PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (23, N'admin', 100, N'May 21 2017  2:39PM', N'May 21 2017  2:39PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (24, N'admin', 100, N'May 21 2017  2:39PM', N'May 21 2017  2:39PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (25, N'admin', 100, N'May 21 2017  2:41PM', N'May 21 2017  2:41PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (26, N'admin', 100, N'May 21 2017  2:44PM', N'May 21 2017  2:44PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (27, N'admin', 100, N'May 21 2017  2:45PM', N'May 21 2017  2:45PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (28, N'admin', 100, N'May 21 2017  3:10PM', N'May 21 2017  3:10PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (29, N'admin', 100, N'May 21 2017  3:21PM', N'May 21 2017  3:21PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (30, N'admin', 100, N'May 21 2017  3:23PM', N'May 21 2017  3:23PM', N'Kamrul-PC', N'408D5C3D4380', N'192.168.1.76', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (31, N'admin', 100, N'May 21 2017  3:26PM', N'May 21 2017  3:26PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (32, N'admin', 100, N'May 21 2017  3:28PM', N'May 21 2017  3:28PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (33, N'admin', 100, N'May 21 2017  3:28PM', N'May 21 2017  3:28PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (34, N'admin', 100, N'May 21 2017  3:29PM', N'May 21 2017  3:29PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (35, N'admin', 100, N'May 21 2017  3:30PM', N'May 21 2017  3:30PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (36, N'admin', 100, N'May 21 2017  3:50PM', N'May 21 2017  3:50PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (37, N'admin', 100, N'May 21 2017  3:51PM', N'May 21 2017  3:51PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
INSERT [dbo].[UserLog] ([ID], [UserName], [CompanyID], [LoginTime], [LogoutTime], [ComputerName], [MacAddress], [LocalIpAddress], [RealIpAddress], [Status]) VALUES (38, N'admin', 100, N'May 21 2017  4:38PM', N'May 21 2017  4:38PM', N'MOHON-PC', N'408D5C3D42D4', N'192.168.1.73', N'1.2.3.4', N'1')
SET IDENTITY_INSERT [dbo].[UserLog] OFF
/****** Object:  Table [dbo].[UserAccessAreaNew]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccessAreaNew](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[A1] [int] NULL,
	[A2] [int] NULL,
	[A3] [int] NULL,
	[A4] [int] NULL,
	[A5] [int] NULL,
	[A6] [int] NULL,
	[A7] [int] NULL,
	[A8] [int] NULL,
	[A9] [int] NULL,
	[A10] [int] NULL,
	[A11] [int] NULL,
	[A12] [int] NULL,
	[A13] [int] NULL,
	[A14] [int] NULL,
	[A15] [int] NULL,
	[A16] [int] NULL,
	[A17] [int] NULL,
	[A18] [int] NULL,
	[A19] [int] NULL,
	[A20] [int] NULL,
	[A21] [int] NULL,
	[A22] [int] NULL,
	[A23] [int] NULL,
	[A24] [int] NULL,
	[A25] [int] NULL,
	[A26] [int] NULL,
	[A27] [int] NULL,
	[A28] [int] NULL,
	[A29] [int] NULL,
	[A30] [int] NULL,
	[A31] [int] NULL,
	[A32] [int] NULL,
	[A33] [int] NULL,
	[A34] [int] NULL,
	[A35] [int] NULL,
	[A36] [int] NULL,
	[A37] [int] NULL,
	[A38] [int] NULL,
	[A39] [int] NULL,
	[A40] [int] NULL,
	[A41] [int] NULL,
	[A42] [int] NULL,
	[A43] [int] NULL,
 CONSTRAINT [PK_NewUserAccess] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[Date] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [int] NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([ID], [CompanyID], [Date], [Name], [Address], [Mobile], [Email], [Gender], [UserName], [Password], [Role], [Image]) VALUES (1, 100, N'2017-05-17', N'Kamrul', N'Dhanmondi', N'01911713686', N'arifcs22@yahoo.com', N'Male', N'admin', N'1', 4, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Unit]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
	[UnitValue] [float] NULL,
 CONSTRAINT [PK_unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON
INSERT [dbo].[Unit] ([UnitID], [UnitName], [UnitValue]) VALUES (1, N'PCS', NULL)
INSERT [dbo].[Unit] ([UnitID], [UnitName], [UnitValue]) VALUES (2, N'Dozon', NULL)
INSERT [dbo].[Unit] ([UnitID], [UnitName], [UnitValue]) VALUES (3, N'KG', NULL)
SET IDENTITY_INSERT [dbo].[Unit] OFF
/****** Object:  Table [dbo].[Supplier]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [varchar](50) NULL,
	[SupplierName] [varchar](50) NULL,
	[SupplierContactPerson] [varchar](50) NULL,
	[SupplierPhone] [varchar](50) NULL,
	[SupplierVatRegNo] [varchar](50) NULL,
	[SupplierEmail] [varchar](50) NULL,
	[SupplierAddress] [varchar](50) NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON
INSERT [dbo].[Supplier] ([SupplierID], [CompanyID], [SupplierName], [SupplierContactPerson], [SupplierPhone], [SupplierVatRegNo], [SupplierEmail], [SupplierAddress]) VALUES (1, N'01', N'Select Supplier', N'Select Supplier', N'Select Supplier', N'Select Supplier', N'Select Supplier', N'Select Supplier')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyID], [SupplierName], [SupplierContactPerson], [SupplierPhone], [SupplierVatRegNo], [SupplierEmail], [SupplierAddress]) VALUES (2, N'01', N'Square', N'Mr. Karim', N'01680073005', N'02586', N'munna@mail.com', N'khulna')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyID], [SupplierName], [SupplierContactPerson], [SupplierPhone], [SupplierVatRegNo], [SupplierEmail], [SupplierAddress]) VALUES (3, N'01', N'Champaion', N'Mr. Sohel', N'0169666', N'8800', N'sohel@yahoo.com', N'Fokirapool')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[SalesReturn]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesReturn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[Date] [varchar](50) NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[SalePrice] [float] NOT NULL,
	[Quantity] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Sales_Return] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[SalesNo] [varchar](50) NULL,
	[SalesDate] [varchar](50) NULL,
	[SalesTime] [varchar](50) NULL,
	[SalesCustomerID] [int] NULL,
	[SalesRemarks] [varchar](500) NULL,
	[Reference] [varchar](150) NULL,
	[SalesProductID] [int] NULL,
	[SalesPurchasePrice] [float] NULL,
	[SalesSalePrice] [float] NULL,
	[SalesQuantity] [float] NULL,
	[SalesProductDiscount] [float] NULL,
	[SalesTotal] [float] NULL,
	[SalesCustomerName] [varchar](50) NULL,
	[SalesSoldBy] [varchar](50) NULL,
	[SalesReceivedAmount] [float] NULL,
	[SalesChangeAmount] [float] NULL,
	[SalesVatRate] [float] NULL,
	[SalesVatTotal] [float] NULL,
	[SalesPuechaseBy] [varchar](50) NULL,
	[SalesPurchaseByContact] [varchar](50) NULL,
	[PaymentType] [int] NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseReturn]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseReturn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[Date] [varchar](50) NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PurchasePrice] [float] NOT NULL,
	[Quantity] [float] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Purchase_Return] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Purchase](
	[PurchaseID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseNo] [varchar](50) NULL,
	[CompanyID] [int] NULL,
	[PurchaseDate] [varchar](50) NULL,
	[SupplierID] [int] NULL,
	[PurchaseSupplierInvoiceNo] [varchar](150) NULL,
	[PurchaseRemarks] [varchar](50) NULL,
	[PurchaseProductID] [int] NULL,
	[PurchaseProductPrice] [float] NULL,
	[PurchaseQuantity] [float] NULL,
	[PurchaseTotal] [float] NULL,
	[PurchaseWarehouseID] [int] NULL,
	[PurchaseFloorID] [int] NULL,
 CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Purchase] ON
INSERT [dbo].[Purchase] ([PurchaseID], [PurchaseNo], [CompanyID], [PurchaseDate], [SupplierID], [PurchaseSupplierInvoiceNo], [PurchaseRemarks], [PurchaseProductID], [PurchaseProductPrice], [PurchaseQuantity], [PurchaseTotal], [PurchaseWarehouseID], [PurchaseFloorID]) VALUES (1, N'PUR01000001', 100, N'2017-05-21', 2, N'fgfdg', N'dfdsf', 1, 0, 184, 0, 1, 7)
INSERT [dbo].[Purchase] ([PurchaseID], [PurchaseNo], [CompanyID], [PurchaseDate], [SupplierID], [PurchaseSupplierInvoiceNo], [PurchaseRemarks], [PurchaseProductID], [PurchaseProductPrice], [PurchaseQuantity], [PurchaseTotal], [PurchaseWarehouseID], [PurchaseFloorID]) VALUES (2, N'PUR01000001', 100, N'2017-05-21', 2, N'fgfdg', N'dfdsf', 2, 0, 6, 0, 3, 3)
SET IDENTITY_INSERT [dbo].[Purchase] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MainCateID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[PurchasePrice] [float] NULL,
	[SalePrice] [float] NULL,
	[Stock] [float] NULL,
	[Description] [varchar](50) NULL,
	[UnitID] [int] NULL,
	[MinimumProductQuantity] [float] NULL,
	[WarehouseID] [int] NULL,
	[RackID] [int] NULL,
	[CellID] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_product_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Product_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (1, 1, 1, 1, N'IPhone 3', N'P0001', 0, 0, 20, N'0', 1, 0, 1, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (2, 1, 1, 1, N'IPhone 4', N'P0002', 0, 0, 30, N'0', 2, 0, 2, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (3, 1, 1, 1, N'IPhone 5', N'P0003', 0, 0, 40, N'0', 3, 0, 1, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (4, 1, 1, 1, N'IPhone 6', N'P0004', 0, 0, 0, N'0', 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (5, 2, 2, 2, N'BASE OF CHAIR', N'P0005', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (6, 2, 2, 2, N'GAS LIFT OF CHAIR', N'P0006', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (7, 2, 2, 2, N'BACK METAL OF CHAIR', N'P0007', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (8, 2, 2, 2, N'ARM OF CHAIR', N'P0008', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (9, 2, 2, 2, N'FITTINGS OF CHAIR', N'P0009', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (10, 2, 2, 2, N'CASTOT OF CHAIR', N'P0010', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (11, 2, 2, 2, N'SEAT COVER OF CHAIR', N'P0011', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (12, 2, 2, 2, N'BACK COVER OF CHAIR', N'P0012', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (13, 2, 2, 2, N'DUST COVER OF CHAIR', N'P0013', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (14, 2, 2, 2, N'BACK SUPPORT OF CHAIR', N'P0014', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (15, 2, 2, 2, N'MACHANISM OF CHAIR', N'P0015', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [MainCateID], [CategoryID], [SubCategoryID], [Name], [Code], [PurchasePrice], [SalePrice], [Stock], [Description], [UnitID], [MinimumProductQuantity], [WarehouseID], [RackID], [CellID], [Status]) VALUES (16, 2, 2, 2, N'IPhone 3', N'P0016', 0, 0, 0, N'0', 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[LocationSub]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocationSub](
	[LocationSubID] [int] IDENTITY(1,1) NOT NULL,
	[LocationMainID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
	[LocationSubName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sub_location] PRIMARY KEY CLUSTERED 
(
	[LocationSubID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LocationSub] ON
INSERT [dbo].[LocationSub] ([LocationSubID], [LocationMainID], [LocationID], [LocationSubName]) VALUES (1, 2, 2, N'Gul Room 1 Cell 1')
INSERT [dbo].[LocationSub] ([LocationSubID], [LocationMainID], [LocationID], [LocationSubName]) VALUES (2, 1, 7, N'khil cell 1')
INSERT [dbo].[LocationSub] ([LocationSubID], [LocationMainID], [LocationID], [LocationSubName]) VALUES (3, 2, 2, N'khil cell 44')
INSERT [dbo].[LocationSub] ([LocationSubID], [LocationMainID], [LocationID], [LocationSubName]) VALUES (4, 3, 4, N'dhan1 cell 111')
INSERT [dbo].[LocationSub] ([LocationSubID], [LocationMainID], [LocationID], [LocationSubName]) VALUES (5, 1, 1, N'khilgaon cell 12')
INSERT [dbo].[LocationSub] ([LocationSubID], [LocationMainID], [LocationID], [LocationSubName]) VALUES (6, 2, 2, N'khil cell 411')
INSERT [dbo].[LocationSub] ([LocationSubID], [LocationMainID], [LocationID], [LocationSubName]) VALUES (7, 4, 8, N'Cell 1')
SET IDENTITY_INSERT [dbo].[LocationSub] OFF
/****** Object:  Table [dbo].[LocationMain]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocationMain](
	[LocationMainID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[LocationMainName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_main_location] PRIMARY KEY CLUSTERED 
(
	[LocationMainID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LocationMain] ON
INSERT [dbo].[LocationMain] ([LocationMainID], [CompanyID], [LocationMainName]) VALUES (1, 1, N'Khilgaon')
INSERT [dbo].[LocationMain] ([LocationMainID], [CompanyID], [LocationMainName]) VALUES (2, 1, N'Gulshan')
INSERT [dbo].[LocationMain] ([LocationMainID], [CompanyID], [LocationMainName]) VALUES (3, 1, N'Dhanmondi')
INSERT [dbo].[LocationMain] ([LocationMainID], [CompanyID], [LocationMainName]) VALUES (4, 1, N'Bata')
SET IDENTITY_INSERT [dbo].[LocationMain] OFF
/****** Object:  Table [dbo].[Location]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationMainID] [int] NOT NULL,
	[LocationName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (1, 1, N'Khilgaon 12')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (2, 2, N'Gulshan Room 1')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (3, 3, N'dhan 1')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (4, 3, N'dhan 2')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (5, 2, N'Gulshan Room 2')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (6, 2, N'Gulshan Room 3')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (7, 1, N'Khilgaon 11')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (8, 4, N'Room 1')
INSERT [dbo].[Location] ([LocationID], [LocationMainID], [LocationName]) VALUES (9, 4, N'Room 2')
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[DamageProductReceive]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DamageProductReceive](
	[DamageProductID] [int] IDENTITY(1,1) NOT NULL,
	[DamageProductNo] [varchar](50) NULL,
	[CompanyID] [int] NULL,
	[DamageProductDate] [varchar](50) NULL,
	[SupplierID] [int] NULL,
	[InvoiceNo] [varchar](150) NULL,
	[DamageProductRemarks] [varchar](50) NULL,
	[DamageProductProductID] [int] NULL,
	[DamageProductPrice] [float] NULL,
	[DamageProductQuantity] [float] NULL,
	[DamageProductTotal] [float] NULL,
 CONSTRAINT [PK_DamageProductReceive] PRIMARY KEY CLUSTERED 
(
	[DamageProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[GroupName] [varchar](100) NULL,
	[CompanyName] [varchar](100) NULL,
	[CustomerName] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[VatRegNo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[PreviousDue] [float] NULL,
 CONSTRAINT [PK_buyer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyInformation]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompanyInformation](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[AddressOptional] [varchar](50) NULL,
	[Mobile] [varchar](50) NOT NULL,
	[MobileOptional] [varchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
	[PhoneOptional] [varchar](50) NULL,
	[Fax] [varchar](50) NOT NULL,
	[FaxOptional] [varchar](50) NULL,
	[VatNo] [varchar](50) NOT NULL,
	[TradeLicense] [varchar](50) NOT NULL,
	[TinNo] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Website] [varchar](50) NULL,
	[VatRate] [float] NULL,
	[Status] [int] NOT NULL,
	[Image] [image] NULL,
	[IsShowRoom] [int] NULL,
 CONSTRAINT [PK_company_info] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategorySub]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategorySub](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[MainCategoryID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_subcategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategorySub] ON
INSERT [dbo].[CategorySub] ([SubCategoryID], [MainCategoryID], [CategoryID], [SubCategoryName]) VALUES (1, 1, 1, N'IPhone')
INSERT [dbo].[CategorySub] ([SubCategoryID], [MainCategoryID], [CategoryID], [SubCategoryName]) VALUES (2, 2, 2, N'Cm-D29AS')
SET IDENTITY_INSERT [dbo].[CategorySub] OFF
/****** Object:  Table [dbo].[CategoryMain]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoryMain](
	[MainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[MaincategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_maincategory] PRIMARY KEY CLUSTERED 
(
	[MainCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryMain] ON
INSERT [dbo].[CategoryMain] ([MainCategoryID], [MaincategoryName]) VALUES (1, N'Electrnocs')
INSERT [dbo].[CategoryMain] ([MainCategoryID], [MaincategoryName]) VALUES (2, N'China Bazar')
SET IDENTITY_INSERT [dbo].[CategoryMain] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 05/21/2017 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[MaincategoryID] [int] NOT NULL,
	[CategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CategoryID], [MaincategoryID], [CategoryName]) VALUES (1, 1, N'Mobile')
INSERT [dbo].[Category] ([CategoryID], [MaincategoryID], [CategoryName]) VALUES (2, 2, N'Raimbow')
INSERT [dbo].[Category] ([CategoryID], [MaincategoryID], [CategoryName]) VALUES (3, 2, N'Mmebiang')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Default [DF_UserLog_RealIpAddress]    Script Date: 05/21/2017 18:02:06 ******/
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF_UserLog_RealIpAddress]  DEFAULT ('1.2.3.4') FOR [RealIpAddress]
GO
/****** Object:  Default [DF_Sales_IsChequeReceive]    Script Date: 05/21/2017 18:02:06 ******/
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_IsChequeReceive]  DEFAULT ((0)) FOR [PaymentType]
GO
