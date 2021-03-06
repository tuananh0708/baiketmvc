USE [master]
GO
/****** Object:  Database [mmm]    Script Date: 12/1/2020 9:57:43 AM ******/
CREATE DATABASE [mmm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mmm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mmm.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mmm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mmm_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [mmm] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mmm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mmm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mmm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mmm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mmm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mmm] SET ARITHABORT OFF 
GO
ALTER DATABASE [mmm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mmm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mmm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mmm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mmm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mmm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mmm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mmm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mmm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mmm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mmm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mmm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mmm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mmm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mmm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mmm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mmm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mmm] SET RECOVERY FULL 
GO
ALTER DATABASE [mmm] SET  MULTI_USER 
GO
ALTER DATABASE [mmm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mmm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mmm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mmm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mmm] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mmm] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'mmm', N'ON'
GO
ALTER DATABASE [mmm] SET QUERY_STORE = OFF
GO
USE [mmm]
GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 12/1/2020 9:57:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[maloaisanpham] [nvarchar](20) NOT NULL,
	[loaisanpham] [nvarchar](20) NULL,
	[more] [nvarchar](500) NULL,
 CONSTRAINT [PK_loaisanpham] PRIMARY KEY CLUSTERED 
(
	[maloaisanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 12/1/2020 9:57:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[maloaisanpham] [nvarchar](20) NOT NULL,
	[masanpham] [nvarchar](20) NOT NULL,
	[tensanpham] [nvarchar](300) NOT NULL,
	[hinhanh] [nvarchar](500) NULL,
	[gia] [int] NULL,
	[soluong] [int] NULL,
	[mota] [nvarchar](200) NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[loaisanpham] ([maloaisanpham], [loaisanpham], [more]) VALUES (N'QA', N'Quanao', NULL)
INSERT [dbo].[loaisanpham] ([maloaisanpham], [loaisanpham], [more]) VALUES (N'VA', N'Vay', NULL)
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'01', N'Quần Áo đi chơi', N'download1.jpg', 3434000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'02', N'Quần áo đi chơi vip', N'download2.jpg', 3060000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'03', N'Váy Áo thả thính', N'download3.jpg', 3629500, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'04', N'Váy Áo thả thính vip', N'download4.jpg', 3655000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'05', N'Váy áo thảnh thính pro', N'download5.jpg', 3383000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'06', N'Combo váy áo quần', N'download6.jpg', 2817750, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'07', N'Quần áo đen bắt nhiệt của nắng', N'download7.jpg', 3247000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'08', N'Áo kẻ tay dài thiết kế mặc váy', N'download8.jpg', 3621000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'09', N'Combo quần dài hơn áo', N'download9.jpg', 3383000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'10', N'Quần áo đi chơi kèm túi xách', N'download10.jpg', 3536000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'11', N'áo dài đờn đi chơi dễ thương', N'download11.jpg', 3578500, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'12', N'Quần ngắn áo dài xịn xò', N'download12.jpg', 3480750, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'13', N'Thể thao vip', N'images.jpg', 3595000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'14', N'Váy áo siêu phẩm', N'images14.jpg', 3655000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'15', N'Váy áo hàng hiệu', N'images15.jpg', 2805000, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'16', N'Váy áo đi chơi thanh lịch', N'images16.jpg', 1545250, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'17', N'Áo thun FA mùa đông', N'images17.jpg', 1245250, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'VA', N'18', N'Váy áo thanh lịch nhưng màu đen', N'images18.jpg', 1245250, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'19', N'Quần Áo ngủ Sunfly', N'sb_1603937231_179.jpg', 1245250, 1, NULL)
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [hinhanh], [gia], [soluong], [mota]) VALUES (N'QA', N'20', N'Quần áo thể thao Sunfly', N'sb_1603937257_811.jpg', 1245250, 1, NULL)
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_loaisanpham] FOREIGN KEY([maloaisanpham])
REFERENCES [dbo].[loaisanpham] ([maloaisanpham])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_loaisanpham]
GO
USE [master]
GO
ALTER DATABASE [mmm] SET  READ_WRITE 
GO
