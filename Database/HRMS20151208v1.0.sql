USE [master]
GO
/****** Object:  Database [HRMSDB]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE DATABASE [HRMSDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRMSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HRMSDB.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRMSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HRMSDB_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HRMSDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRMSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRMSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRMSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRMSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRMSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRMSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRMSDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HRMSDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HRMSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRMSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRMSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRMSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRMSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRMSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRMSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRMSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRMSDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HRMSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRMSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRMSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRMSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRMSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRMSDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HRMSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRMSDB] SET RECOVERY FULL 
GO
ALTER DATABASE [HRMSDB] SET  MULTI_USER 
GO
ALTER DATABASE [HRMSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRMSDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRMSDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRMSDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [HRMSDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Address]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Street1] [nvarchar](50) NOT NULL,
	[Street2] [nvarchar](50) NULL,
	[SuburbId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ABN] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_dbo.Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ContactTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.ContactType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Franchise] [bit] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeInDevelopmentPosition]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInDevelopmentPosition](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeInDevelopmentPosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeInPosition]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInPosition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[PositionId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeInPosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeInSalePosition]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInSalePosition](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeInSalePosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeInSupportPosition]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInSupportPosition](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeInSupportPosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeInTrainingPosition]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInTrainingPosition](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeInTrainingPosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EnhancementRequest]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnhancementRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Weight] [int] NOT NULL,
	[OutcomeId] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EnhancementRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EnhancementRequestOutcome]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnhancementRequestOutcome](
	[Id] [int] NOT NULL,
	[Result] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.EnhancementRequestOutcome] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Office]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Office](
	[Id] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[AddressId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Office] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position_Development]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position_Development](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Position_Development] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position_Sales]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position_Sales](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Position_Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position_Support]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position_Support](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Position_Support] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position_Training]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position_Training](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Position_Training] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PositionInState]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionInState](
	[EmployeeInPositionId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PositionInState] PRIMARY KEY CLUSTERED 
(
	[EmployeeInPositionId] ASC,
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project_Development]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Development](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnhancementRequestId] [int] NOT NULL,
	[ManagerId] [int] NOT NULL,
	[Start] [datetime] NOT NULL,
	[Finish] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Project_Development] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[OrderNumber] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Sale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaleLead]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleLead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[SaleId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Timestamp] [datetime] NULL,
 CONSTRAINT [PK_dbo.SaleLead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaleLeadState]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleLeadState](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.SaleLeadState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaleLineItem]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleLineItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SaleId] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.SaleLineItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalePositionLead]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalePositionLead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeInSalePostionId] [int] NOT NULL,
	[SaleLeadId] [int] NOT NULL,
	[FinalisedSale] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SalePositionLead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalePositionLeadAction]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalePositionLeadAction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalePositionLeadId] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[NextContactDate] [datetime] NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[EndContact] [datetime] NOT NULL,
	[IsAllDay] [bit] NOT NULL,
	[Frequency] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SalePositionLeadAction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Site]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Site](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AddressId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Franchise] [bit] NOT NULL,
	[HeadQuarters] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Site] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suburb]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suburb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[Postcode] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Latitude] [decimal](18, 2) NOT NULL,
	[Longitude] [decimal](18, 2) NOT NULL,
	[ZoneId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Suburb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupportStaffShift]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportStaffShift](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeInSupportPositionId] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[IsAllDay] [bit] NULL,
	[RecurrenceId] [int] NULL,
	[RecurrenceException] [nvarchar](max) NULL,
	[RecurrenceRule] [nvarchar](max) NULL,
	[StartTimezone] [nvarchar](max) NULL,
	[EndTimezone] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SupportStaffShift] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupportTicket]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportTicket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TicketStateId] [int] NOT NULL,
	[SiteId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.SupportTicket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupportTicketAssignment]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportTicketAssignment](
	[Id] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[TicketId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SupportTicketAssignment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Task_Development]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task_Development](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[DeveloperId] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Start] [datetime] NOT NULL,
	[Finish] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Task_Development] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Task_Parent]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task_Parent](
	[ParentId] [int] NOT NULL,
	[ChildId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Task_Parent] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC,
	[ChildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TicketAssignmentAction]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketAssignmentAction](
	[Id] [int] NOT NULL,
	[AssignmentId] [int] NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TicketAssignmentAction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TicketState]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketState](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.TicketState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Training]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Training](
	[Id] [int] NOT NULL,
	[TrainingTypeId] [int] NOT NULL,
	[RatePerHour] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Training] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingSession]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingSession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[TrainingId] [int] NOT NULL,
	[EmployeeTrainerId] [int] NULL,
	[Start] [datetime] NOT NULL,
	[Duration (mins)] [int] NOT NULL,
	[Delivered] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TrainingSession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingType]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.TrainingType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zone]    Script Date: 8/12/2015 12:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zone](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Zone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [Name], [ABN]) VALUES (1, N'CompanyA', N'1323456')
INSERT [dbo].[Company] ([Id], [Name], [ABN]) VALUES (2, N'CompanyB', N'6542314')
INSERT [dbo].[Company] ([Id], [Name], [ABN]) VALUES (3, N'CompanyC', N'1236589')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [CompanyId], [Name], [Franchise], [Phone], [Email]) VALUES (1, 1, N'Henry', 0, N'0897786784', N'email')
INSERT [dbo].[Customer] ([Id], [CompanyId], [Name], [Franchise], [Phone], [Email]) VALUES (2, 1, N'Rosie', 0, N'23445676', N'email;')
INSERT [dbo].[Customer] ([Id], [CompanyId], [Name], [Franchise], [Phone], [Email]) VALUES (3, 2, N'Harold', 0, N'429759340', N'emails')
INSERT [dbo].[Customer] ([Id], [CompanyId], [Name], [Franchise], [Phone], [Email]) VALUES (4, 2, N'Andrew', 0, N'0986554', N'emailss')
INSERT [dbo].[Customer] ([Id], [CompanyId], [Name], [Franchise], [Phone], [Email]) VALUES (5, 3, N'Phil', 0, N'9089865', N'sample')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[EnhancementRequest] ON 

INSERT [dbo].[EnhancementRequest] ([Id], [CustomerId], [Description], [Weight], [OutcomeId], [Timestamp]) VALUES (1, 2, N'Point of Sales', 5, 1, CAST(0x0000A56800C90634 AS DateTime))
SET IDENTITY_INSERT [dbo].[EnhancementRequest] OFF
INSERT [dbo].[EnhancementRequestOutcome] ([Id], [Result]) VALUES (1, N'Pending')
INSERT [dbo].[EnhancementRequestOutcome] ([Id], [Result]) VALUES (2, N'Approved')
INSERT [dbo].[EnhancementRequestOutcome] ([Id], [Result]) VALUES (3, N'Declined')
/****** Object:  Index [IX_SuburbId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_SuburbId] ON [dbo].[Address]
(
	[SuburbId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContactTypeId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContactTypeId] ON [dbo].[Contact]
(
	[ContactTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Contact]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Contact]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyId] ON [dbo].[Customer]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Employee]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[EmployeeInDevelopmentPosition]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmployeeInPosition]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PositionId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_PositionId] ON [dbo].[EmployeeInPosition]
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[EmployeeInSalePosition]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[EmployeeInSupportPosition]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[EmployeeInTrainingPosition]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[EnhancementRequest]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OutcomeId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_OutcomeId] ON [dbo].[EnhancementRequest]
(
	[OutcomeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AddressId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_AddressId] ON [dbo].[Office]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyId]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyId] ON [dbo].[Person]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Position_Development]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Position_Sales]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Position_Support]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Position_Training]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeInPositionId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeInPositionId] ON [dbo].[PositionInState]
(
	[EmployeeInPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StateId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_StateId] ON [dbo].[PositionInState]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EnhancementRequestId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_EnhancementRequestId] ON [dbo].[Project_Development]
(
	[EnhancementRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ManagerId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_ManagerId] ON [dbo].[Project_Development]
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[SaleLead]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SaleId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SaleId] ON [dbo].[SaleLead]
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StateId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_StateId] ON [dbo].[SaleLead]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[SaleLineItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SaleId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SaleId] ON [dbo].[SaleLineItem]
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeInSalePostionId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeInSalePostionId] ON [dbo].[SalePositionLead]
(
	[EmployeeInSalePostionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SaleLeadId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SaleLeadId] ON [dbo].[SalePositionLead]
(
	[SaleLeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SalePositionLeadId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SalePositionLeadId] ON [dbo].[SalePositionLeadAction]
(
	[SalePositionLeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AddressId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_AddressId] ON [dbo].[Site]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Site]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_CountryId] ON [dbo].[State]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StateId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_StateId] ON [dbo].[Suburb]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ZoneId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_ZoneId] ON [dbo].[Suburb]
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeInSupportPositionId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeInSupportPositionId] ON [dbo].[SupportStaffShift]
(
	[EmployeeInSupportPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SiteId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SiteId] ON [dbo].[SupportTicket]
(
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TicketStateId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_TicketStateId] ON [dbo].[SupportTicket]
(
	[TicketStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[SupportTicketAssignment]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TicketId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_TicketId] ON [dbo].[SupportTicketAssignment]
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DeveloperId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_DeveloperId] ON [dbo].[Task_Development]
(
	[DeveloperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectId] ON [dbo].[Task_Development]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChildId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChildId] ON [dbo].[Task_Parent]
(
	[ChildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [dbo].[Task_Parent]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignmentId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_AssignmentId] ON [dbo].[TicketAssignmentAction]
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingTypeId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingTypeId] ON [dbo].[Training]
(
	[TrainingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeTrainerId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeTrainerId] ON [dbo].[TrainingSession]
(
	[EmployeeTrainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SiteId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SiteId] ON [dbo].[TrainingSession]
(
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingId]    Script Date: 8/12/2015 12:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingId] ON [dbo].[TrainingSession]
(
	[TrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Address_dbo.Suburb_SuburbId] FOREIGN KEY([SuburbId])
REFERENCES [dbo].[Suburb] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_dbo.Address_dbo.Suburb_SuburbId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contact_dbo.ContactType_ContactTypeId] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ContactType] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_dbo.Contact_dbo.ContactType_ContactTypeId]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contact_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_dbo.Contact_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contact_dbo.Person_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_dbo.Contact_dbo.Person_Id]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customer_dbo.Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_dbo.Customer_dbo.Company_CompanyId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employee_dbo.Person_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_dbo.Employee_dbo.Person_Id]
GO
ALTER TABLE [dbo].[EmployeeInDevelopmentPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeInDevelopmentPosition_dbo.EmployeeInPosition_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[EmployeeInPosition] ([Id])
GO
ALTER TABLE [dbo].[EmployeeInDevelopmentPosition] CHECK CONSTRAINT [FK_dbo.EmployeeInDevelopmentPosition_dbo.EmployeeInPosition_Id]
GO
ALTER TABLE [dbo].[EmployeeInPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeInPosition_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmployeeInPosition] CHECK CONSTRAINT [FK_dbo.EmployeeInPosition_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeeInPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeInPosition_dbo.Position_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[EmployeeInPosition] CHECK CONSTRAINT [FK_dbo.EmployeeInPosition_dbo.Position_PositionId]
GO
ALTER TABLE [dbo].[EmployeeInSalePosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeInSalePosition_dbo.EmployeeInPosition_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[EmployeeInPosition] ([Id])
GO
ALTER TABLE [dbo].[EmployeeInSalePosition] CHECK CONSTRAINT [FK_dbo.EmployeeInSalePosition_dbo.EmployeeInPosition_Id]
GO
ALTER TABLE [dbo].[EmployeeInSupportPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeInSupportPosition_dbo.EmployeeInPosition_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[EmployeeInPosition] ([Id])
GO
ALTER TABLE [dbo].[EmployeeInSupportPosition] CHECK CONSTRAINT [FK_dbo.EmployeeInSupportPosition_dbo.EmployeeInPosition_Id]
GO
ALTER TABLE [dbo].[EmployeeInTrainingPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeInTrainingPosition_dbo.EmployeeInPosition_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[EmployeeInPosition] ([Id])
GO
ALTER TABLE [dbo].[EmployeeInTrainingPosition] CHECK CONSTRAINT [FK_dbo.EmployeeInTrainingPosition_dbo.EmployeeInPosition_Id]
GO
ALTER TABLE [dbo].[EnhancementRequest]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnhancementRequest_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[EnhancementRequest] CHECK CONSTRAINT [FK_dbo.EnhancementRequest_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[EnhancementRequest]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnhancementRequest_dbo.EnhancementRequestOutcome_OutcomeId] FOREIGN KEY([OutcomeId])
REFERENCES [dbo].[EnhancementRequestOutcome] ([Id])
GO
ALTER TABLE [dbo].[EnhancementRequest] CHECK CONSTRAINT [FK_dbo.EnhancementRequest_dbo.EnhancementRequestOutcome_OutcomeId]
GO
ALTER TABLE [dbo].[Office]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Office_dbo.Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Office] CHECK CONSTRAINT [FK_dbo.Office_dbo.Address_AddressId]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Person_dbo.Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_dbo.Person_dbo.Company_CompanyId]
GO
ALTER TABLE [dbo].[Position_Development]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_Development_dbo.Position_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Position_Development] CHECK CONSTRAINT [FK_dbo.Position_Development_dbo.Position_Id]
GO
ALTER TABLE [dbo].[Position_Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_Sales_dbo.Position_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Position_Sales] CHECK CONSTRAINT [FK_dbo.Position_Sales_dbo.Position_Id]
GO
ALTER TABLE [dbo].[Position_Support]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_Support_dbo.Position_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Position_Support] CHECK CONSTRAINT [FK_dbo.Position_Support_dbo.Position_Id]
GO
ALTER TABLE [dbo].[Position_Training]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_Training_dbo.Position_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Position_Training] CHECK CONSTRAINT [FK_dbo.Position_Training_dbo.Position_Id]
GO
ALTER TABLE [dbo].[PositionInState]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PositionInState_dbo.EmployeeInPosition_EmployeeInPositionId] FOREIGN KEY([EmployeeInPositionId])
REFERENCES [dbo].[EmployeeInPosition] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PositionInState] CHECK CONSTRAINT [FK_dbo.PositionInState_dbo.EmployeeInPosition_EmployeeInPositionId]
GO
ALTER TABLE [dbo].[PositionInState]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PositionInState_dbo.State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PositionInState] CHECK CONSTRAINT [FK_dbo.PositionInState_dbo.State_StateId]
GO
ALTER TABLE [dbo].[Project_Development]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Project_Development_dbo.EmployeeInDevelopmentPosition_ManagerId] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[EmployeeInDevelopmentPosition] ([Id])
GO
ALTER TABLE [dbo].[Project_Development] CHECK CONSTRAINT [FK_dbo.Project_Development_dbo.EmployeeInDevelopmentPosition_ManagerId]
GO
ALTER TABLE [dbo].[Project_Development]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Project_Development_dbo.EnhancementRequest_EnhancementRequestId] FOREIGN KEY([EnhancementRequestId])
REFERENCES [dbo].[EnhancementRequest] ([Id])
GO
ALTER TABLE [dbo].[Project_Development] CHECK CONSTRAINT [FK_dbo.Project_Development_dbo.EnhancementRequest_EnhancementRequestId]
GO
ALTER TABLE [dbo].[SaleLead]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleLead_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[SaleLead] CHECK CONSTRAINT [FK_dbo.SaleLead_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[SaleLead]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleLead_dbo.Sale_SaleId] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[SaleLead] CHECK CONSTRAINT [FK_dbo.SaleLead_dbo.Sale_SaleId]
GO
ALTER TABLE [dbo].[SaleLead]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleLead_dbo.SaleLeadState_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[SaleLeadState] ([Id])
GO
ALTER TABLE [dbo].[SaleLead] CHECK CONSTRAINT [FK_dbo.SaleLead_dbo.SaleLeadState_StateId]
GO
ALTER TABLE [dbo].[SaleLineItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleLineItem_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[SaleLineItem] CHECK CONSTRAINT [FK_dbo.SaleLineItem_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[SaleLineItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleLineItem_dbo.Sale_SaleId] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[SaleLineItem] CHECK CONSTRAINT [FK_dbo.SaleLineItem_dbo.Sale_SaleId]
GO
ALTER TABLE [dbo].[SalePositionLead]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalePositionLead_dbo.EmployeeInSalePosition_EmployeeInSalePostionId] FOREIGN KEY([EmployeeInSalePostionId])
REFERENCES [dbo].[EmployeeInSalePosition] ([Id])
GO
ALTER TABLE [dbo].[SalePositionLead] CHECK CONSTRAINT [FK_dbo.SalePositionLead_dbo.EmployeeInSalePosition_EmployeeInSalePostionId]
GO
ALTER TABLE [dbo].[SalePositionLead]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalePositionLead_dbo.SaleLead_SaleLeadId] FOREIGN KEY([SaleLeadId])
REFERENCES [dbo].[SaleLead] ([Id])
GO
ALTER TABLE [dbo].[SalePositionLead] CHECK CONSTRAINT [FK_dbo.SalePositionLead_dbo.SaleLead_SaleLeadId]
GO
ALTER TABLE [dbo].[SalePositionLeadAction]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalePositionLeadAction_dbo.SalePositionLead_SalePositionLeadId] FOREIGN KEY([SalePositionLeadId])
REFERENCES [dbo].[SalePositionLead] ([Id])
GO
ALTER TABLE [dbo].[SalePositionLeadAction] CHECK CONSTRAINT [FK_dbo.SalePositionLeadAction_dbo.SalePositionLead_SalePositionLeadId]
GO
ALTER TABLE [dbo].[Site]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Site_dbo.Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Site] CHECK CONSTRAINT [FK_dbo.Site_dbo.Address_AddressId]
GO
ALTER TABLE [dbo].[Site]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Site_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Site] CHECK CONSTRAINT [FK_dbo.Site_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_dbo.State_dbo.Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_dbo.State_dbo.Country_CountryId]
GO
ALTER TABLE [dbo].[Suburb]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Suburb_dbo.State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Id])
GO
ALTER TABLE [dbo].[Suburb] CHECK CONSTRAINT [FK_dbo.Suburb_dbo.State_StateId]
GO
ALTER TABLE [dbo].[Suburb]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Suburb_dbo.Zone_ZoneId] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[Zone] ([Id])
GO
ALTER TABLE [dbo].[Suburb] CHECK CONSTRAINT [FK_dbo.Suburb_dbo.Zone_ZoneId]
GO
ALTER TABLE [dbo].[SupportStaffShift]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SupportStaffShift_dbo.EmployeeInSupportPosition_EmployeeInSupportPositionId] FOREIGN KEY([EmployeeInSupportPositionId])
REFERENCES [dbo].[EmployeeInSupportPosition] ([Id])
GO
ALTER TABLE [dbo].[SupportStaffShift] CHECK CONSTRAINT [FK_dbo.SupportStaffShift_dbo.EmployeeInSupportPosition_EmployeeInSupportPositionId]
GO
ALTER TABLE [dbo].[SupportTicket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SupportTicket_dbo.Site_SiteId] FOREIGN KEY([SiteId])
REFERENCES [dbo].[Site] ([Id])
GO
ALTER TABLE [dbo].[SupportTicket] CHECK CONSTRAINT [FK_dbo.SupportTicket_dbo.Site_SiteId]
GO
ALTER TABLE [dbo].[SupportTicket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SupportTicket_dbo.TicketState_StateId] FOREIGN KEY([TicketStateId])
REFERENCES [dbo].[TicketState] ([Id])
GO
ALTER TABLE [dbo].[SupportTicket] CHECK CONSTRAINT [FK_dbo.SupportTicket_dbo.TicketState_StateId]
GO
ALTER TABLE [dbo].[SupportTicketAssignment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SupportTicketAssignment_dbo.EmployeeInPosition_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeInPosition] ([Id])
GO
ALTER TABLE [dbo].[SupportTicketAssignment] CHECK CONSTRAINT [FK_dbo.SupportTicketAssignment_dbo.EmployeeInPosition_EmployeeId]
GO
ALTER TABLE [dbo].[SupportTicketAssignment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SupportTicketAssignment_dbo.SupportTicket_TicketId] FOREIGN KEY([TicketId])
REFERENCES [dbo].[SupportTicket] ([Id])
GO
ALTER TABLE [dbo].[SupportTicketAssignment] CHECK CONSTRAINT [FK_dbo.SupportTicketAssignment_dbo.SupportTicket_TicketId]
GO
ALTER TABLE [dbo].[Task_Development]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_Development_dbo.EmployeeInDevelopmentPosition_DeveloperId] FOREIGN KEY([DeveloperId])
REFERENCES [dbo].[EmployeeInDevelopmentPosition] ([Id])
GO
ALTER TABLE [dbo].[Task_Development] CHECK CONSTRAINT [FK_dbo.Task_Development_dbo.EmployeeInDevelopmentPosition_DeveloperId]
GO
ALTER TABLE [dbo].[Task_Development]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_Development_dbo.Project_Development_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project_Development] ([Id])
GO
ALTER TABLE [dbo].[Task_Development] CHECK CONSTRAINT [FK_dbo.Task_Development_dbo.Project_Development_ProjectId]
GO
ALTER TABLE [dbo].[Task_Parent]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_Parent_dbo.Task_Development_ChildId] FOREIGN KEY([ChildId])
REFERENCES [dbo].[Task_Development] ([Id])
GO
ALTER TABLE [dbo].[Task_Parent] CHECK CONSTRAINT [FK_dbo.Task_Parent_dbo.Task_Development_ChildId]
GO
ALTER TABLE [dbo].[Task_Parent]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_Parent_dbo.Task_Development_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Task_Development] ([Id])
GO
ALTER TABLE [dbo].[Task_Parent] CHECK CONSTRAINT [FK_dbo.Task_Parent_dbo.Task_Development_ParentId]
GO
ALTER TABLE [dbo].[TicketAssignmentAction]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TicketAssignmentAction_dbo.SupportTicketAssignment_AssignmentId] FOREIGN KEY([AssignmentId])
REFERENCES [dbo].[SupportTicketAssignment] ([Id])
GO
ALTER TABLE [dbo].[TicketAssignmentAction] CHECK CONSTRAINT [FK_dbo.TicketAssignmentAction_dbo.SupportTicketAssignment_AssignmentId]
GO
ALTER TABLE [dbo].[Training]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Training_dbo.TrainingType_TrainingTypeId] FOREIGN KEY([TrainingTypeId])
REFERENCES [dbo].[TrainingType] ([Id])
GO
ALTER TABLE [dbo].[Training] CHECK CONSTRAINT [FK_dbo.Training_dbo.TrainingType_TrainingTypeId]
GO
ALTER TABLE [dbo].[TrainingSession]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrainingSession_dbo.EmployeeInTrainingPosition_EmployeeTrainerId] FOREIGN KEY([EmployeeTrainerId])
REFERENCES [dbo].[EmployeeInTrainingPosition] ([Id])
GO
ALTER TABLE [dbo].[TrainingSession] CHECK CONSTRAINT [FK_dbo.TrainingSession_dbo.EmployeeInTrainingPosition_EmployeeTrainerId]
GO
ALTER TABLE [dbo].[TrainingSession]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrainingSession_dbo.Site_SiteId] FOREIGN KEY([SiteId])
REFERENCES [dbo].[Site] ([Id])
GO
ALTER TABLE [dbo].[TrainingSession] CHECK CONSTRAINT [FK_dbo.TrainingSession_dbo.Site_SiteId]
GO
ALTER TABLE [dbo].[TrainingSession]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrainingSession_dbo.Training_TrainingId] FOREIGN KEY([TrainingId])
REFERENCES [dbo].[Training] ([Id])
GO
ALTER TABLE [dbo].[TrainingSession] CHECK CONSTRAINT [FK_dbo.TrainingSession_dbo.Training_TrainingId]
GO
USE [master]
GO
ALTER DATABASE [HRMSDB] SET  READ_WRITE 
GO
