USE [master]
GO
CREATE DATABASE [db_emp_timetracker] ON  PRIMARY 
( NAME = N'test', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\db_emp_timetracker.mdf' , SIZE = 3072KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\db_emp_timetracker.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

ALTER DATABASE [db_emp_timetracker] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_emp_timetracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [db_emp_timetracker] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET ARITHABORT OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [db_emp_timetracker] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [db_emp_timetracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [db_emp_timetracker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET  DISABLE_BROKER 
GO

ALTER DATABASE [db_emp_timetracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [db_emp_timetracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [db_emp_timetracker] SET  READ_WRITE 
GO

ALTER DATABASE [db_emp_timetracker] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [db_emp_timetracker] SET  MULTI_USER 
GO

ALTER DATABASE [db_emp_timetracker] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [db_emp_timetracker] SET DB_CHAINING OFF 
GO


USE [master]
GO
CREATE LOGIN [dbuser] WITH PASSWORD=N'password', DEFAULT_DATABASE=[test], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [db_emp_timetracker]
GO
CREATE USER [dbuser] FOR LOGIN [dbuser]
GO
USE [test]
GO
EXEC sp_addrolemember N'db_owner', N'dbuser'
GO

USE [db_emp_timetracker]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_owner] TO [dbuser]
GO
USE [db_emp_timetracker]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [dbuser]
GO
USE [db_emp_timetracker]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datawriter] TO [dbuser]
GO
USE [db_emp_timetracker]
GO
EXEC sp_addrolemember N'db_datawriter', N'dbuser'
GO
USE [db_emp_timetracker]
GO
EXEC sp_addrolemember N'db_datareader', N'dbuser'
GO
USE [db_emp_timetracker]
GO
EXEC sp_addrolemember N'db_owner', N'dbuser'
GO
