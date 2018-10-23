USE [master]
GO
/****** Object:  Database [QEQC06]    Script Date: 11/10/2018 14:32:48 ******/
CREATE DATABASE [QEQC06]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QEQC06', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QEQC06.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QEQC06_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QEQC06_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QEQC06] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QEQC06].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QEQC06] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QEQC06] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QEQC06] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QEQC06] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QEQC06] SET ARITHABORT OFF 
GO
ALTER DATABASE [QEQC06] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QEQC06] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QEQC06] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QEQC06] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QEQC06] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QEQC06] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QEQC06] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QEQC06] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QEQC06] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QEQC06] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QEQC06] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QEQC06] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QEQC06] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QEQC06] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QEQC06] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QEQC06] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QEQC06] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QEQC06] SET RECOVERY FULL 
GO
ALTER DATABASE [QEQC06] SET  MULTI_USER 
GO
ALTER DATABASE [QEQC06] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QEQC06] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QEQC06] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QEQC06] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QEQC06] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QEQC06', N'ON'
GO
ALTER DATABASE [QEQC06] SET QUERY_STORE = OFF
GO
USE [QEQC06]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QEQC06]
GO
/****** Object:  User [QEQC06]    Script Date: 11/10/2018 14:32:48 ******/
CREATE USER [QEQC06] FOR LOGIN [QEQC06] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [QEQC06]
GO
/****** Object:  Table [dbo].[Caracteristicas]    Script Date: 11/10/2018 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caracteristicas](
	[Id] [int] NOT NULL,
	[Caracteristica] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Caracteristicas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 11/10/2018 14:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Admin] [bit] NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 11/10/2018 14:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdCaracteristica] [int] NOT NULL,
 CONSTRAINT [PK_Personajes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [QEQC06] SET  READ_WRITE 
GO
