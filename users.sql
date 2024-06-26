USE [master]
GO
/****** Object:  Database [users_Рау]    Script Date: 04.04.2024 13:52:37 ******/
CREATE DATABASE [users_Рау]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'users_Рау', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\users_Рау.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'users_Рау_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\users_Рау_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [users_Рау] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [users_Рау].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [users_Рау] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [users_Рау] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [users_Рау] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [users_Рау] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [users_Рау] SET ARITHABORT OFF 
GO
ALTER DATABASE [users_Рау] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [users_Рау] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [users_Рау] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [users_Рау] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [users_Рау] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [users_Рау] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [users_Рау] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [users_Рау] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [users_Рау] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [users_Рау] SET  DISABLE_BROKER 
GO
ALTER DATABASE [users_Рау] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [users_Рау] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [users_Рау] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [users_Рау] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [users_Рау] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [users_Рау] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [users_Рау] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [users_Рау] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [users_Рау] SET  MULTI_USER 
GO
ALTER DATABASE [users_Рау] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [users_Рау] SET DB_CHAINING OFF 
GO
ALTER DATABASE [users_Рау] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [users_Рау] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [users_Рау] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [users_Рау] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [users_Рау] SET QUERY_STORE = OFF
GO
USE [users_Рау]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04.04.2024 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [varchar](100) NOT NULL,
	[Логин] [varchar](50) NOT NULL,
	[Пароль] [varchar](50) NOT NULL,
	[Роль] [varchar](50) NOT NULL,
	[Номер телефона] [varchar](50) NOT NULL,
	[Пол] [varchar](50) NOT NULL,
	[Фото] [nchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (1, N'Чашин*Елизар*Михеевич', N'Elizor@gmai,com', N'yntiRS', N'Администратор', N'+7(1070)628 29 16', N'Мужской', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (2, N'Филенкова*Владлена*Олеговна', N'Vladlena@gmai.com', N'07i7Lb', N'Менеджер А', N'+7(334)1460151', N'Женский', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (4, N'Ломовцев*Адам*Владимирович', N'Adam@gmai.com', N'7SP9CV', N'Менеджер С', N'+7(8560)519-32-99', N'Male', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (7, N'Тепляков*Кир*Федосиевич', N'Kar@gmai.com', N'6QF1WB', N'Удален', N'+7(824)893-24-03', N'Male', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (8, N'Рюриков*Юлий*Глебович', N'Yli@gmai.com', N'GwffgE', N'Администратор', N'+7(6402)701-31-09', N'Мужской', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (10, N'Беломестина*Василиса*Тимофеевна', N'Vasilisa@gmai.com', N'd7iKKV', N'Администратор', N'+7(92)920-74-47', N'Ж', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (11, N'Панькива*Галина*Якововна', N'Galina@gmai.com', N'8KC7wJ', N'Менеджер А', N'+7 (405) 088 73 89', N'Female', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (12, N'Зарубин*Мирон*Мечиславович', N'Miron@@gmai,com', N'x58OAN', N'Администратор', N'+7(6010)195-02-09', N'М', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (14, N'Веточкина*Всеслава*Андрияновна', N'Vseslava@gmai.com', N'fhDSBf', N'Менеджер С', N'+7(078)429-57-86', N'Женский', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (15, N'Рябова*Виктория*Елизаровна', N'Victoria@gmai.com', N'9mlPQJ', N'Удален', N'+7(6394)904-01-61', N'Female', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (16, N'Федотов*Леон#Фёдорович', N'Anisa@gmai.com', N'Wh4OYm', N'Менеджер А', N'+7(22)3264959', N'М', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (17, N'Шарапов*Феофан*Кириллович', N'Feafan@@gmai,com', N'Kc1PeS', N'Менеджер С', N'+7(789)762-30-28', N'М', NULL)
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (18, N'dfhn', N'xfgj', N'gfh', N'Менеджер A', N'234235', N'Мужской', N'dfhsrh    ')
INSERT [dbo].[Users] ([ID], [ФИО], [Логин], [Пароль], [Роль], [Номер телефона], [Пол], [Фото]) VALUES (21, N'fxhbdfhb', N'cfhbdsh', N'fcbhtdsh', N'Менеджер A', N'43632', N'Женский', N'3456      ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [users_Рау] SET  READ_WRITE 
GO
