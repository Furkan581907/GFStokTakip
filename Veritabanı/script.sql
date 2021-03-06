USE [master]
GO
/****** Object:  Database [GFOtomasyon]    Script Date: 27.12.2018 20:46:18 ******/
CREATE DATABASE [GFOtomasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GFOtomasyon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER2017\MSSQL\DATA\GFOtomasyon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GFOtomasyon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER2017\MSSQL\DATA\GFOtomasyon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GFOtomasyon] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GFOtomasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GFOtomasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GFOtomasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GFOtomasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GFOtomasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GFOtomasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [GFOtomasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GFOtomasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GFOtomasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GFOtomasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GFOtomasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GFOtomasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GFOtomasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GFOtomasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GFOtomasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GFOtomasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GFOtomasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GFOtomasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GFOtomasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GFOtomasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GFOtomasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GFOtomasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GFOtomasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GFOtomasyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GFOtomasyon] SET  MULTI_USER 
GO
ALTER DATABASE [GFOtomasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GFOtomasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GFOtomasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GFOtomasyon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GFOtomasyon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GFOtomasyon] SET QUERY_STORE = OFF
GO
USE [GFOtomasyon]
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
USE [GFOtomasyon]
GO
/****** Object:  User [NewUser]    Script Date: 27.12.2018 20:46:19 ******/
CREATE USER [NewUser] FOR LOGIN [NewUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[TBL_Departmanlar]    Script Date: 27.12.2018 20:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Departmanlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmanAdi] [nvarchar](30) NULL,
	[DepartmanKodu] [nvarchar](30) NULL,
	[SaveDate] [datetime] NULL,
	[SaveUser] [int] NULL,
	[EditDate] [datetime] NULL,
	[EditUser] [int] NULL,
 CONSTRAINT [PK_TBL_MusteriGrup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Urunler]    Script Date: 27.12.2018 20:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Urunler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunBarkod] [nvarchar](30) NULL,
	[UrunKodu] [nvarchar](20) NULL,
	[UrunAdi] [nvarchar](50) NULL,
	[UrunAlisFiyat] [decimal](8, 2) NULL,
	[UrunMarkaID] [int] NULL,
	[UrunTuruID] [int] NULL,
	[UrunTeminID] [int] NULL,
	[UrunTuruAciklama] [text] NULL,
	[UrunStokMiktari] [int] NULL,
	[UrunAlisTarihi] [datetime] NULL,
	[UrunTeminSubeAdi] [nvarchar](50) NULL,
	[UrunSaveUser] [int] NULL,
	[UrunSaveDate] [datetime] NULL,
	[UrunEditUser] [int] NULL,
	[UrunEditDate] [datetime] NULL,
 CONSTRAINT [PK_TBL_Urunler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Zimmetler]    Script Date: 27.12.2018 20:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Zimmetler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmetKodu] [nvarchar](50) NULL,
	[PersonelID] [int] NULL,
	[UrunID] [int] NULL,
	[DepartmanID] [int] NULL,
	[TeslimTarihi] [datetime] NULL,
	[SaveUser] [int] NULL,
	[SaveDate] [datetime] NULL,
	[EditUser] [int] NULL,
	[EditDate] [datetime] NULL,
 CONSTRAINT [PK_TBL_Zimmetler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Personeller]    Script Date: 27.12.2018 20:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Personeller](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelKodu] [nvarchar](30) NULL,
	[PersonelAdiSoyadi] [nvarchar](150) NULL,
	[PersonelKullaniciAdi] [nvarchar](50) NULL,
	[PersonelSifre] [nvarchar](50) NULL,
	[PersonelRutbe] [nvarchar](50) NULL,
	[PersonelAktif] [bit] NULL,
	[SorumluOldDepartman] [nvarchar](50) NULL,
	[DepartmanID] [int] NULL,
	[IseBaslangicTarihi] [datetime] NULL,
	[AyrilmaTarihi] [datetime] NULL,
	[Sehir] [nvarchar](30) NULL,
	[Ilce] [nvarchar](30) NULL,
	[Adres] [text] NULL,
	[Telefon1] [nvarchar](16) NULL,
	[Telefon2] [nvarchar](16) NULL,
	[WebAdres] [nvarchar](150) NULL,
	[Mail] [nvarchar](250) NULL,
	[SaveDate] [datetime] NULL,
	[SaveUser] [int] NULL,
	[EditDate] [datetime] NULL,
	[EditUser] [int] NULL,
	[LastLogin] [datetime] NULL,
 CONSTRAINT [PK_TBL_Personeller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_ZimmetListesi]    Script Date: 27.12.2018 20:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ZimmetListesi]
AS
SELECT        dbo.TBL_Departmanlar.DepartmanAdi, dbo.TBL_Personeller.PersonelKodu, dbo.TBL_Personeller.PersonelAdiSoyadi, dbo.TBL_Personeller.PersonelRutbe, dbo.TBL_Personeller.SorumluOldDepartman, 
                         dbo.TBL_Personeller.IseBaslangicTarihi, dbo.TBL_Personeller.Telefon1, dbo.TBL_Urunler.UrunKodu, dbo.TBL_Urunler.UrunAdi, dbo.TBL_Urunler.UrunAlisFiyat, dbo.TBL_Zimmetler.TeslimTarihi, 
                         dbo.TBL_Zimmetler.ZimmetKodu, dbo.TBL_Zimmetler.SaveUser, dbo.TBL_Zimmetler.EditDate, dbo.TBL_Zimmetler.SaveDate, dbo.TBL_Zimmetler.EditUser, dbo.TBL_Zimmetler.ID
FROM            dbo.TBL_Zimmetler INNER JOIN
                         dbo.TBL_Personeller ON dbo.TBL_Zimmetler.PersonelID = dbo.TBL_Personeller.ID INNER JOIN
                         dbo.TBL_Departmanlar ON dbo.TBL_Zimmetler.DepartmanID = dbo.TBL_Departmanlar.ID INNER JOIN
                         dbo.TBL_Urunler ON dbo.TBL_Zimmetler.UrunID = dbo.TBL_Urunler.ID
GO
/****** Object:  Table [dbo].[TBL_UrunMarka]    Script Date: 27.12.2018 20:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_UrunMarka](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MarkaAdi] [nvarchar](30) NULL,
	[MarkaKodu] [nvarchar](30) NULL,
	[MarkaSaveDate] [datetime] NULL,
	[MarkaSaveUser] [int] NULL,
	[MarkaEditUser] [int] NULL,
	[MarkaEditDate] [datetime] NULL,
 CONSTRAINT [PK_TBL_UrunGruplari] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_UrunTuru]    Script Date: 27.12.2018 20:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_UrunTuru](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunTuruKodu] [nvarchar](30) NULL,
	[UrunTuruAdi] [nvarchar](50) NULL,
	[UrunTuruSaveDate] [datetime] NULL,
	[UrunTuruSaveUser] [int] NULL,
	[UrunTuruEditDate] [datetime] NULL,
	[UrunTuruEditUser] [int] NULL,
 CONSTRAINT [PK_TBL_UrunTuru] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Temin]    Script Date: 27.12.2018 20:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Temin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeminKodu] [nvarchar](30) NULL,
	[TeminAdi] [nvarchar](50) NULL,
	[TeminSaveDate] [datetime] NULL,
	[TeminSaveUser] [int] NULL,
	[TeminEditDate] [datetime] NULL,
	[TeminEditUser] [int] NULL,
 CONSTRAINT [PK_TBL_Temin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_Urunler]    Script Date: 27.12.2018 20:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Urunler]
AS
SELECT        dbo.TBL_Temin.TeminKodu, dbo.TBL_Temin.TeminAdi, dbo.TBL_UrunTuru.UrunTuruKodu, dbo.TBL_UrunTuru.UrunTuruAdi, dbo.TBL_Urunler.UrunAdi, dbo.TBL_Urunler.UrunAlisFiyat, dbo.TBL_Urunler.UrunBarkod, 
                         dbo.TBL_Urunler.UrunKodu, dbo.TBL_Urunler.UrunTuruAciklama, dbo.TBL_Urunler.UrunStokMiktari, dbo.TBL_Urunler.UrunAlisTarihi, dbo.TBL_Urunler.UrunTeminSubeAdi, dbo.TBL_Urunler.UrunSaveUser, 
                         dbo.TBL_Urunler.UrunSaveDate, dbo.TBL_UrunMarka.MarkaAdi, dbo.TBL_UrunMarka.MarkaKodu, dbo.TBL_Urunler.UrunEditUser, dbo.TBL_Urunler.UrunEditDate
FROM            dbo.TBL_Temin INNER JOIN
                         dbo.TBL_UrunMarka INNER JOIN
                         dbo.TBL_Urunler ON dbo.TBL_UrunMarka.ID = dbo.TBL_Urunler.UrunMarkaID INNER JOIN
                         dbo.TBL_UrunTuru ON dbo.TBL_Urunler.UrunTuruID = dbo.TBL_UrunTuru.ID ON dbo.TBL_Temin.ID = dbo.TBL_Urunler.UrunTeminID
GO
/****** Object:  Table [dbo].[TBL_ZimmetHata]    Script Date: 27.12.2018 20:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ZimmetHata](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmetID] [int] NULL,
	[PersonelID] [int] NULL,
	[UrunID] [int] NULL,
	[HataAciklama] [text] NULL,
	[IadeTarihi] [datetime] NULL,
	[ZimmetHataIadeID] [int] NULL,
	[SaveDate] [datetime] NULL,
	[SaveUser] [int] NULL,
	[EditDate] [datetime] NULL,
	[EditUser] [int] NULL,
 CONSTRAINT [PK_TBL_ZimmetHata] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ZimmetIadeNeden]    Script Date: 27.12.2018 20:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ZimmetIadeNeden](
	[ID] [int] NOT NULL,
	[ZimmetIadeKodu] [nvarchar](30) NULL,
	[ZimmetIadeNeden] [nvarchar](150) NULL,
	[SaveDate] [datetime] NULL,
	[SaveUser] [int] NULL,
	[EditDate] [datetime] NULL,
	[EditUser] [int] NULL,
 CONSTRAINT [PK_TBL_ZimmetIadeNeden] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBL_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Personeller_TBL_Departmanlar] FOREIGN KEY([DepartmanID])
REFERENCES [dbo].[TBL_Departmanlar] ([ID])
GO
ALTER TABLE [dbo].[TBL_Personeller] CHECK CONSTRAINT [FK_TBL_Personeller_TBL_Departmanlar]
GO
ALTER TABLE [dbo].[TBL_Urunler]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Urunler_TBL_Temin] FOREIGN KEY([UrunTeminID])
REFERENCES [dbo].[TBL_Temin] ([ID])
GO
ALTER TABLE [dbo].[TBL_Urunler] CHECK CONSTRAINT [FK_TBL_Urunler_TBL_Temin]
GO
ALTER TABLE [dbo].[TBL_Urunler]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Urunler_TBL_UrunMarka] FOREIGN KEY([UrunMarkaID])
REFERENCES [dbo].[TBL_UrunMarka] ([ID])
GO
ALTER TABLE [dbo].[TBL_Urunler] CHECK CONSTRAINT [FK_TBL_Urunler_TBL_UrunMarka]
GO
ALTER TABLE [dbo].[TBL_Urunler]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Urunler_TBL_UrunTuru] FOREIGN KEY([UrunTuruID])
REFERENCES [dbo].[TBL_UrunTuru] ([ID])
GO
ALTER TABLE [dbo].[TBL_Urunler] CHECK CONSTRAINT [FK_TBL_Urunler_TBL_UrunTuru]
GO
ALTER TABLE [dbo].[TBL_ZimmetHata]  WITH CHECK ADD  CONSTRAINT [FK_TBL_ZimmetHata_TBL_Personeller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[TBL_Personeller] ([ID])
GO
ALTER TABLE [dbo].[TBL_ZimmetHata] CHECK CONSTRAINT [FK_TBL_ZimmetHata_TBL_Personeller]
GO
ALTER TABLE [dbo].[TBL_ZimmetHata]  WITH CHECK ADD  CONSTRAINT [FK_TBL_ZimmetHata_TBL_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[TBL_Urunler] ([ID])
GO
ALTER TABLE [dbo].[TBL_ZimmetHata] CHECK CONSTRAINT [FK_TBL_ZimmetHata_TBL_Urunler]
GO
ALTER TABLE [dbo].[TBL_ZimmetHata]  WITH CHECK ADD  CONSTRAINT [FK_TBL_ZimmetHata_TBL_ZimmetIadeNeden] FOREIGN KEY([ZimmetHataIadeID])
REFERENCES [dbo].[TBL_ZimmetIadeNeden] ([ID])
GO
ALTER TABLE [dbo].[TBL_ZimmetHata] CHECK CONSTRAINT [FK_TBL_ZimmetHata_TBL_ZimmetIadeNeden]
GO
ALTER TABLE [dbo].[TBL_ZimmetHata]  WITH CHECK ADD  CONSTRAINT [FK_TBL_ZimmetHata_TBL_Zimmetler] FOREIGN KEY([ZimmetID])
REFERENCES [dbo].[TBL_Zimmetler] ([ID])
GO
ALTER TABLE [dbo].[TBL_ZimmetHata] CHECK CONSTRAINT [FK_TBL_ZimmetHata_TBL_Zimmetler]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TBL_Temin"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL_UrunTuru"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL_UrunMarka"
            Begin Extent = 
               Top = 6
               Left = 478
               Bottom = 136
               Right = 648
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL_Urunler"
            Begin Extent = 
               Top = 6
               Left = 247
               Bottom = 136
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Urunler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Urunler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Urunler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[67] 4[9] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TBL_Departmanlar"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL_Urunler"
            Begin Extent = 
               Top = 6
               Left = 513
               Bottom = 136
               Right = 706
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL_Personeller"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 136
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL_Zimmetler"
            Begin Extent = 
               Top = 135
               Left = 459
               Bottom = 265
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_ZimmetListesi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_ZimmetListesi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_ZimmetListesi'
GO
USE [master]
GO
ALTER DATABASE [GFOtomasyon] SET  READ_WRITE 
GO
