USE [master]
GO
/****** Object:  Database [qlkhachsan]    Script Date: 2/6/2023 2:09:52 PM ******/
CREATE DATABASE [qlkhachsan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlkhachsan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlkhachsan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlkhachsan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlkhachsan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlkhachsan] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlkhachsan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlkhachsan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlkhachsan] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlkhachsan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlkhachsan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlkhachsan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlkhachsan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlkhachsan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlkhachsan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlkhachsan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlkhachsan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlkhachsan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlkhachsan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlkhachsan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlkhachsan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlkhachsan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlkhachsan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlkhachsan] SET  MULTI_USER 
GO
ALTER DATABASE [qlkhachsan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlkhachsan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlkhachsan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlkhachsan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qlkhachsan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlkhachsan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qlkhachsan] SET QUERY_STORE = OFF
GO
USE [qlkhachsan]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[avatar] [nvarchar](1000) NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bills]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bills](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[schedule_id] [int] NULL,
	[num_day] [int] NULL,
	[price_room] [float] NULL,
	[price_service] [float] NULL,
	[total_price] [float] NULL,
	[bill_status] [bit] NULL,
 CONSTRAINT [PK_bills] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[phone] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[message] [nvarchar](100) NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[department_id] [int] NULL,
	[avatar] [nvarchar](1000) NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[news_title] [nvarchar](4000) NULL,
	[news_description] [nvarchar](4000) NULL,
	[news_content] [nvarchar](4000) NULL,
	[news_avatar] [nvarchar](1000) NULL,
	[news_cat_id] [int] NOT NULL,
	[news_status] [bit] NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news_categories]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news_categories](
	[news_cat_id] [int] IDENTITY(1,1) NOT NULL,
	[news_cat_name] [nvarchar](100) NULL,
	[news_cat_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_news_categories] PRIMARY KEY CLUSTERED 
(
	[news_cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[schedule_id] [int] NULL,
	[service_id] [int] NULL,
	[quantity] [int] NULL,
	[order_price] [float] NULL,
	[bill_id] [int] NULL,
	[order_status] [bit] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_types]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_types](
	[room_type_id] [int] IDENTITY(1,1) NOT NULL,
	[room_type_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_room_types] PRIMARY KEY CLUSTERED 
(
	[room_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[room_name] [nvarchar](50) NULL,
	[avatar] [nvarchar](1000) NULL,
	[room_status] [bit] NULL,
	[room_type_id] [int] NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedules]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedules](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[date_in] [date] NULL,
	[date_out] [date] NULL,
	[room_id] [int] NULL,
	[schedule_status] [bit] NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[cat_id] [int] NULL,
	[service_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_services] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admins] ON 

INSERT [dbo].[admins] ([admin_id], [phone], [password], [email], [address], [avatar]) VALUES (2, N'0349174806', N'huan124', N'huanminh2103@gmail.com', N'nghi lien', N'18.jpg')
SET IDENTITY_INSERT [dbo].[admins] OFF
GO
SET IDENTITY_INSERT [dbo].[bills] ON 

INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (36, 49, 2, 200, 0, 200, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (37, 50, 11, 1100, 0, 1100, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (1036, 1049, 22, 2200, 0, 2200, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (1037, 1050, 22, 2200, 0, 2200, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (1038, 1051, 2, 200, 0, 200, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (1039, 1052, 13, 1300, 0, 1300, 0)
SET IDENTITY_INSERT [dbo].[bills] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([cat_id], [cat_name]) VALUES (1, N'Đồ ăn')
INSERT [dbo].[categories] ([cat_id], [cat_name]) VALUES (3, N'Vệ sinh')
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[contacts] ON 

INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (1, N'Hoang Van tuan', N'01689526455', N'hvtuan@as.jp', N'Cho toi thong tin khach san nao')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (2, N'Le Thanh Van', N'09758563255', N'lethanhvan@asd.com', N'Le Thanh Van Contact Us')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (3, N'Lê Văn Huân', N'0349174806', N'huanminh2103@gmail.com', N'tốt')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (4, N'Lê Văn Huân', N'0349174806', N'huanminh2103@gmail.com', N'tốt')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (5, N'Lê Văn Huân', N'0349174806', N'huanminh2103@gmail.com', N'tốt')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (1003, N'Lê Văn Huân', N'0392189718', N'huan@gmail.com', N'aaaa')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (1004, N'Lê Văn Huân', N'0349174806', N'huanminh2103@gmail.com', N'phông chữ xấu quá')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (1005, N'Lê Văn Huân', N'0349174806', N'huanminh2103@gmail.com', N'phông chữ xấu quá')
SET IDENTITY_INSERT [dbo].[contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[departments] ON 

INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (1, N'')
INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (2, N'Kế toán')
INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (3, N'Vệ sinh')
INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (4, N'An ninh')
SET IDENTITY_INSERT [dbo].[departments] OFF
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([employee_id], [phone], [password], [email], [address], [department_id], [avatar]) VALUES (1, N'0975853528', N'123456', N'ngoctt@gmail.com', N'Hưng Yên', 1, N'logoChuanFinal.png')
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([news_id], [news_title], [news_description], [news_content], [news_avatar], [news_cat_id], [news_status]) VALUES (3, N'Chương trình khuyến mãi "Hành trình tận hưởng, xứng tầm đẳng cấp"', N'Kỳ nghỉ đông sắp đến, bạn xứng đáng được tận hưởng những trải nghiệm cao cấp nhất với không gian sang trọng, bữa tối thịnh soạn và xe riêng đón tiễn tại Mường Thanh', N'Giá dành cho 02 khách : 2.700.000 VNĐ  Thời gian áp dụng: 01/12/2018 – 28/02/2019  Ưu đãi bao gồm:  Gói nghỉ dưỡng 3 ngày 2 đêm cho 02 người  01 phòng Deluxe King/Twin 03 ngày 02 đêm Miễn phí ăn sáng hàng ngày Miễn phí trà, café và nước suối hàng ngày 01 bữa ăn tối dành cho 02 người Giá trên đã bao gồm 5% phí phục vụ và 10% thuế VAT', N'12.PNG', 2, 1)
INSERT [dbo].[news] ([news_id], [news_title], [news_description], [news_content], [news_avatar], [news_cat_id], [news_status]) VALUES (6, N'Ưu đãi, khuyến mãi khách sạn Mường Thanh: combo/ voucher giảm giá ', N'Các chương trình ưu đãi, combo/ voucher, tour giảm giá dịp lễ, tết, mùa du lịch, lễ hội, sự kiện….tại các khách sạn', N'Tư vấn đặt phòng, voucher/ combo vé máy bay, xe đưa đón. Dịch vụ tổ chức sự kiện, hội nghị, hội thảo, họp lớp, gala, tiệc cưới, tiệc gia đình, spa, nhà hàng trọn gói.', N'12.PNG', 2, 1)
SET IDENTITY_INSERT [dbo].[news] OFF
GO
SET IDENTITY_INSERT [dbo].[news_categories] ON 

INSERT [dbo].[news_categories] ([news_cat_id], [news_cat_name], [news_cat_description]) VALUES (2, N'Tin tức', N'Tin tức')
SET IDENTITY_INSERT [dbo].[news_categories] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1041, 50, 7, 1, 25000, 37, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1042, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1043, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1044, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1045, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1046, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1047, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1048, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1049, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1050, 49, 5, 5, 75000, 36, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (1051, 49, 5, 5, 75000, 36, 0)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[room_types] ON 

INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (1, N'Phòng đơn')
INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (2, N'Phòng đôi')
INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (3, N'Phòng VIP')
SET IDENTITY_INSERT [dbo].[room_types] OFF
GO
SET IDENTITY_INSERT [dbo].[rooms] ON 

INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (15, N'Phòng đơn 105', N'hihi', 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (16, N'Phòng đơn 306', NULL, 0, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (17, N'Phòng đơn 506', NULL, 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (18, N'Phòng đôi 101', NULL, 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (19, N'Phòng đôi 106', NULL, 0, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (20, N'Phòng đôi 103', N'hihi', 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (21, N'Phòng VIP 05', N'hihi', 1, 3)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (22, N'Phòng VIP 39', NULL, 1, 3)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (23, N'Phòng đôi 276', NULL, 0, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (24, N'Phòng 209', N'Chayroi', 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (25, N'Phòng đôi 101', NULL, 0, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (26, N'Phòng VIP 119', NULL, 0, 3)
SET IDENTITY_INSERT [dbo].[rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[schedules] ON 

INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (49, N'Lê Văn Huân', N'0349174806', N'huanminh2103@gmail.com', CAST(N'2022-10-01' AS Date), CAST(N'2022-10-02' AS Date), 17, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (50, N'Đặng Nguyễn Phương Hà', N'0567183114', N'haxinhdep@gmail.com', CAST(N'2022-10-28' AS Date), CAST(N'2022-11-08' AS Date), 22, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1049, N'Lê Duy Long', N'0349174806', N'soi1204@gmail.com', CAST(N'2022-11-09' AS Date), CAST(N'2022-11-30' AS Date), 23, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1050, N'Lê Duy Long', N'0349174806', N'soi1204@gmail.com', CAST(N'2022-11-09' AS Date), CAST(N'2022-11-30' AS Date), 23, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1051, N'Lê Văn Huân', N'0398425456', N'huan@gmail.com', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-08' AS Date), 19, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1052, N'Đặng', N'0125', N'h@gmail.com', CAST(N'2022-12-02' AS Date), CAST(N'2022-12-14' AS Date), 15, 0)
SET IDENTITY_INSERT [dbo].[schedules] OFF
GO
SET IDENTITY_INSERT [dbo].[services] ON 

INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (5, N'Mì tôm trứng', 15000, 1, N'Mì tôm trứng')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (6, N'Phở bò', 25000, 1, N'Phở bò')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (7, N'Cơm rang ', 25000, 1, N'Cơm rang ')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (10, N'Dọn phòng', 20000, 3, N'Dọn phòng')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (13, N'SandWich', 10000, 1, N'SandWich')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (14, N'Bánh mì thập cẩm', 15000, 1, N'Bánh mì thập cẩm')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (15, N'Thay ga giường', 20000, 3, N'Thay ga giường')
SET IDENTITY_INSERT [dbo].[services] OFF
GO
ALTER TABLE [dbo].[bills] ADD  CONSTRAINT [DF_bills_bill_status]  DEFAULT ((0)) FOR [bill_status]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news_news_status]  DEFAULT ((1)) FOR [news_status]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF_orders_order_status]  DEFAULT ((0)) FOR [order_status]
GO
ALTER TABLE [dbo].[rooms] ADD  CONSTRAINT [DF_rooms_room_status]  DEFAULT ((0)) FOR [room_status]
GO
ALTER TABLE [dbo].[schedules] ADD  CONSTRAINT [DF_schedules_schedule_status]  DEFAULT ((0)) FOR [schedule_status]
GO
ALTER TABLE [dbo].[bills]  WITH CHECK ADD  CONSTRAINT [FK_bills_schedules] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedules] ([schedule_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bills] CHECK CONSTRAINT [FK_bills_schedules]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_departments] FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([department_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_departments]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_news_categories] FOREIGN KEY([news_cat_id])
REFERENCES [dbo].[news_categories] ([news_cat_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_news_categories]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_bills] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bills] ([bill_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_bills]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_schedules] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedules] ([schedule_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_schedules]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_services] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([service_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_services]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_room_types] FOREIGN KEY([room_type_id])
REFERENCES [dbo].[room_types] ([room_type_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_room_types]
GO
ALTER TABLE [dbo].[schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_schedules] FOREIGN KEY([room_id])
REFERENCES [dbo].[rooms] ([room_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[schedules] CHECK CONSTRAINT [FK_schedules_schedules]
GO
ALTER TABLE [dbo].[services]  WITH CHECK ADD  CONSTRAINT [FK_services_categories] FOREIGN KEY([cat_id])
REFERENCES [dbo].[categories] ([cat_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[services] CHECK CONSTRAINT [FK_services_categories]
GO
USE [master]
GO
ALTER DATABASE [qlkhachsan] SET  READ_WRITE 
GO
