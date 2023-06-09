USE [master]
GO
/****** Object:  Database [Quanlykhachsan]    Script Date: 10/01/2021 5:43:37 CH ******/
CREATE DATABASE [Quanlykhachsan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quanlykhachsan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Quanlykhachsan.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Quanlykhachsan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Quanlykhachsan_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Quanlykhachsan] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlykhachsan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlykhachsan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlykhachsan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quanlykhachsan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Quanlykhachsan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quanlykhachsan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET RECOVERY FULL 
GO
ALTER DATABASE [Quanlykhachsan] SET  MULTI_USER 
GO
ALTER DATABASE [Quanlykhachsan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quanlykhachsan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quanlykhachsan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quanlykhachsan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Quanlykhachsan] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Quanlykhachsan', N'ON'
GO
USE [Quanlykhachsan]
GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 10/01/2021 5:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DatPhong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[IdPhong] [int] NULL,
	[NgayDat] [date] NULL,
	[NgayDen] [date] NULL,
	[NgayTra] [date] NULL,
	[DichVu] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[ThanhTien] [int] NULL,
	[DaHuy] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 10/01/2021 5:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachSan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[CachTrungTam] [int] NULL,
	[MoTa] [nvarchar](1000) NULL,
	[GiapBien] [bit] NULL,
	[DanhGia] [int] NULL,
	[BuaAn] [int] NULL,
	[IdThanhPho] [int] NULL,
	[IdLoaiKhachSan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiKhachSan]    Script Date: 10/01/2021 5:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiKhachSan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[MoTa] [nvarchar](200) NULL,
	[UrlHinhAnh] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 10/01/2021 5:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[DienTich] [int] NULL,
	[GiaThue] [int] NULL,
	[TienNghi] [nvarchar](200) NULL,
	[MoTa] [nvarchar](1000) NULL,
	[LoaiGiuong] [int] NULL,
	[IdKhachSan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/01/2021 5:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[SoDienThoai] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhPho]    Script Date: 10/01/2021 5:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhPho](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[MoTa] [nvarchar](200) NULL,
	[UrlHinhAnh] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachSan] ON 

INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (1, N'The Light Hotel', N'79 Tran Cung, Quận Từ Liêm, Hà Nội', N'0366918587', 1045, N'Nằm ở quận Hoàn Kiếm, thuộc thành phố Hà Nội, The Light Hotel chỉ cách 300 m từ Nhà Thờ Lớn. Với các phòng nghỉ thanh lịch và hiện đại, khách sạn có hồ bơi ngoài trời cùng tầm nhìn ra vườn.', 0, 5, 2, 1, 1)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (2, N'Rising Dragon Palace Hotel', N'24 Hang Ga Street, Quận Ba Đình, Hà Nội', N'0328758787', 2455, N'Rising Dragon Palace Hotel cách Hồ Hoàn Kiếm và Nhà hát múa rối nước chỉ vài dãy nhà. Khách sạn cung cấp chỗ đỗ xe cũng như Wi-Fi miễn phí và bữa sáng tự chọn miễn phí.', 0, 4, 4, 1, 2)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (3, N'Classic Street Hotel', N'41 Hang Be Street, Quận Hoàn Kiếm, Hà Nội', N'0365618587', 1410, N'Classic Street Hotel tọa lạc trên Phố cổ Hàng Bè ở thành phố Hà Nội, nằm trong bán kính 5 phút đi bộ từ Hồ Hoàn Kiếm, Đền Ngọc Sơn và Nhà hát Múa rối Nước Thăng Long. Khách sạn có lối trang trí kiểu Việt Nam truyền thống, Wi-Fi miễn phí và nhà hàng trong khuôn viên phục vụ các món ăn Việt Nam.', 0, 5, 1, 1, 3)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (4, N'O Gallery Majestic Hotel', N'38 Tran Phu, Quận Bắc Từ Liêm, Hà Nội', N'0366916587', 8812, N'Tọa lạc tại Khu phố Pháp yên bình, O Gallery Majestic Hotel có hồ bơi ngoài trời, phòng tập thể dục và vườn. Khách sạn nằm trong bán kính 700 m từ Nhà thờ Lớn Hà Nội, Bảo tàng Lịch sử Quân sự Việt Nam, Cột cờ Hà Nội và Hoàng thành Thăng Long. Du khách có thể truy cập Wi-Fi miễn phí.', 0, 5, 4, 1, 4)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (5, N'Hanoi Allure Hotel', N'52 Dao Duy Tu, Quận Hai Bà Trưng, Hà Nội', N'0366918891', 1341, N'Hanoi Allure Hotel tọa lạc tại vị trí lý tưởng ở quận Hoàn Kiếm của thành phố Hà Nội, cách Ô Quan Chưởng 200 m, Chợ Đồng Xuân 700 m và Nhà hát múa rối nước Thăng Long 800 m. Trong số các tiện nghi của chỗ nghỉ này có nhà hàng, lễ tân 24 giờ, dịch vụ phòng và WiFi miễn phí trong toàn bộ khuôn viên. Chỗ nghỉ cũng cung cấp sảnh khách chung, trung tâm dịch vụ doanh nhân và dịch vụ thu đổi ngoại tệ cho khách.', 0, 3, 3, 1, 2)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (6, N'HCM Cristina Hotel & Travel', N'40 Phat Loc, Quận Tân Bình, TP. Hồ Chí Minh', N'0366915457', 1778, N'Có vị trí thuận tiện ở quận Tân Bình thuộc thành phố Hồ Chí Minh, HCM Cristina Hotel & Travel nằm cách Ô Quan Chưởng 500 m, Nhà hát múa rối nước Thăng Long 600 m và Chợ Đồng Xuân chưa đến 1 km. Trong số các tiện nghi của khách sạn này có nhà hàng, lễ tân 24 giờ, dịch vụ phòng và Wi-Fi miễn phí, Khách sạn cung cấp các phòng gia đình.', 1, 5, 4, 2, 1)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (7, N'Dola Hostel', N'205/26 Bui Vien, Quận 1, TP. Hồ Chí Minh', N'0366956527', 504, N'Tọa lạc tại Thành phố Hồ Chí Minh, cách Bảo tàng Mỹ thuật trong vòng 1,3 km và trung tâm thương mại Takashimaya Việt Nam 1,6 km, Dola Hostel cung cấp chỗ nghỉ với sảnh khách chung đồng thời miễn phí WiFi cũng như chỗ đỗ xe riêng cho khách lái xe. Chỗ nghỉ này còn có dịch vụ phòng và sân hiên. Tại đây cũng có lễ tân 24 giờ, bếp chung và dịch vụ thu đổi ngoại tệ cho khách.', 1, 2, 3, 2, 3)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (8, N'9 Hostel and Bar', N'9 Bui Thi Xuan street, Quận 10, TP. Hồ Chí Minh', N'0365456287', 150, N'Chỉ cách Phố đi bộ Bùi Viện nổi tiếng một quãng đi bộ ngắn, 9 Hostel and Rooftop cung cấp các phòng ngủ tập thể và phòng riêng bắt mắt với truy cập Wi-Fi miễn phí. Tọa lạc tại trung tâm Quận 1 sôi động ở Thành phố Hồ Chí Minh, nhà trọ này có lối đi dễ dàng đến hầu hết các địa danh chính của thành phố như Chợ Bến Thành, Nhà hát Thành phố, Bảo tàng Mỹ thuật và Nhà thờ Đức Bà.', 0, 3, 4, 2, 1)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (9, N'Town House 23 Saigon', N'23 Dang Thi Nhu, Quận 2, TP. Hồ Chí Minh', N'0366454787', 188, N'Chỉ cách Chợ Bến Thành nổi tiếng 300 m, Town House 23 Saigon cung cấp các phòng được bài trí trang nhã với phòng tắm riêng. Khách cũng được truy cập Wi-Fi miễn phí.', 1, 4, 3, 4, 8)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (10, N'Victory Airport Hotel', N'96 Yên Thế, Quận Tân Bình, TP. Hồ Chí Minh', N'0366475187', 3416, N'Nằm ở thành phố Hồ Chí Minh, cách chợ Tân Định 6 km, Victory Airport Hotel có chỗ nghỉ với quầy bar, chỗ đỗ xe riêng miễn phí, sảnh khách chung và sân hiên. Khách sạn cung cấp WiFi miễn phí, đồng thời nằm trong bán kính khoảng 6 km từ Chùa Giác Lâm và 7 km từ Bảo tàng Chứng tích Chiến tranh. Tại đây cũng cung cấp dịch vụ lễ tân 24 giờ, dịch vụ phòng và dịch vụ thu đổi ngoại tệ cho khách.', 1, 5, 1, 2, 3)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (11, N'Da Nang Sunlit Sea Hotel & Apartment', N'41-42 Do Bi Street, Đà Nẵng', N'0374775187', 3005, N'Tọa lạc tại Đà Nẵng, cách 2,7 km từ Cầu tàu Tình yêu, Da Nang Sunlit Sea Hotel & Apartment cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí, hồ bơi ngoài trời và quán bar. Khách sạn 4 sao này có sảnh khách chung và phòng nghỉ gắn máy điều hòa đi kèm WiFi miễn phí cùng phòng tắm riêng. Chỗ nghỉ còn có lễ tân 24 giờ, bếp chung và dịch vụ thu đổi ngoại tệ cho khách.', 1, 4, 3, 3, 1)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (12, N'OYO 403 Bao Quyen', N'35 Tran Hung Dao, Đà Nẵng, Việt Nam', N'0366475187', 1210, N'Khách sạn chỉ cách thành phố Đà Nẵng và Bãi biển Mỹ Khê nổi tiếng 2 km. Sân bay Quốc tế Đà Nẵng và Ga Đà Nẵng nằm ở vị trí thuận tiện cách nơi đây 3 km trong khi khách đi 30 km là tới Phố Cổ Hội An.', 1, 2, 3, 3, 1)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (13, N'Sunflower Hotel', N'Corner Vo Van Kiet - Ho Nghinh, Đà Nẵng', N'0366000187', 4332, N'Phòng nghỉ của khách sạn được trang bị máy điều hòa, TV truyền hình cáp màn hình phẳng, ấm đun nước, chậu rửa vệ sinh (bidet), máy sấy tóc và bàn làm việc. Phòng tắm riêng đi kèm vòi sen và đồ vệ sinh cá nhân miễn phí. Các phòng cũng có tầm nhìn ra hồ và tủ quần áo.', 1, 3, 1, 4, 2)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (14, N'Koceano Resort Villas', N'Võ Nguyên Giáp Villas S21 - Furama Villas, Đà Nẵng, Việt Nam', N'0366046182', 250, N'Offering lake or pool views, each unit comes with a kitchen, a satellite flat-screen TV and Blu-ray player, desk, a washing machine and a private bathroom with hot tub and a hairdryer. All units are air conditioned and include a seating and/or dining area.', 1, 5, 4, 3, 3)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (15, N'DNBV - BeachVillas', N'55 Cẩm Phô, Đà Nẵng', N'0344475162', 2155, N'Nằm cách Ngũ Hành Sơn 5 km, DNBV - BeachVillas có chỗ nghỉ, nhà hàng, hồ bơi ngoài trời, trung tâm thể dục và quán bar. Biệt thự này cung cấp cả WiFi lẫn chỗ đỗ xe riêng miễn phí.', 0, 4, 2, 3, 4)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (16, N'Lan Phuong Hotel', N'60 Phạm Ngũ Lão, Tp. Đà lạt, Tỉnh Lâm Đồng', N'0366445210', 345, N'Lan Phuong Hotel nằm cách Vườn Hoa Đà Lạt 3 km và Thiền viện Trúc Lâm 5 km. Sân bay gần nhất là sân bay Liên Khương, cách khách sạn 29 km. Khách sạn cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.', 0, 4, 2, 4, 4)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (19, N'Rosemary Studio Dalat', N'29 Đường Mạc Đĩnh Chi, Đà Lạt', N'0366542888', 1015, N'Rosemary Studio Dalat nằm ở thành phố Đà Lạt, cách Quảng trường Lâm Viên 2 km và Hồ Xuân Hương 2,2 km. Căn hộ này có chỗ nghỉ với sảnh khách chung, WiFi miễn phí, lễ tân 24 giờ, bếp chung và khu vườn.', 0, 5, 4, 4, 8)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (21, N'Acacia Heritage Hotel', N'54 Nguyen Tri Phuong , Cẩm Nam, Hội An', N'0444405427', 2200, N'Acacia Heritage Hotel cách Hội quán Triều Châu cũng như Bảo tàng Lịch sử và Văn hoá Hội An 9 phút đi bộ. Sân bay gần nhất là sân bay quốc tế Đà Nẵng, cách đó 50 phút lái xe.', 1, 4, 2, 5, 1)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (22, N'Tribee Ede Hostel & Bar', N'30 Ba Trieu, Cẩm Phô, Hà Nội', N'0361278654', 1158, N'Chỉ cách khu Phố Cổ và chợ địa phương 5 phút đi bộ, Tribee Ede tận hưởng vị trí yên tĩnh được bao quanh bởi thiên nhiên. Nơi đây có WiFi miễn phí trong toàn bộ khuôn viên.', 0, 0, 0, 1, 2)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (23, N'The AN retreat Hoi An', N'Tống Văn Sương, Cẩm Thanh, Hội An', N'0322848672', 3004, N'Cách Hội quán Triều Châu 3 km, The AN retreat Hoi An cung cấp chỗ nghỉ, nhà hàng, hồ bơi ngoài trời, quán bar và sảnh khách chung. Du khách có thể truy cập Wi-Fi miễn phí trong toàn bộ khuôn viên.', 1, 4, 4, 5, 3)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (24, N'Serenity Villa Hoi An', N'91 Ngô Quyền, Minh An, Hội An', N'0366475256', 5236, N'Providing city views, Serenity Villa Hoi An in Hoi An provides accommodation, an outdoor swimming pool, a bar, a shared lounge, a garden and a terrace. Complimentary WiFi is featured.', 0, 2, 2, 5, 4)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (26, N'LA Beach Hotel', N'22 Lê Bình, Đà Nẵng, Việt Nam', N'0346475256', 2346, N'Providing city views, Serenity Villa Hoi An in Hoi An provides accommodation, an outdoor swimming pool, a bar, a shared lounge, a garden and a terrace. Complimentary WiFi is featured.', 0, 2, 2, 3, 4)
INSERT [dbo].[KhachSan] ([Id], [Ten], [DiaChi], [SoDienThoai], [CachTrungTam], [MoTa], [GiapBien], [DanhGia], [BuaAn], [IdThanhPho], [IdLoaiKhachSan]) VALUES (27, N'ND Building', N'9 Le Van Huan, Tân Bình, TP. Hồ Chí Minh', N'0326475256', 6436, N'LA Beach Hotel nằm trong bán kính 2,2 km từ Cầu Sông Hàn và 2,9 km từ Trung tâm thương mại Indochina Riverside. Sân bay gần nhất là sân bay quốc tế Đà Nẵng, cách chỗ nghỉ 7 km.', 0, 2, 1, 2, 3)
SET IDENTITY_INSERT [dbo].[KhachSan] OFF
SET IDENTITY_INSERT [dbo].[LoaiKhachSan] ON 

INSERT [dbo].[LoaiKhachSan] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (1, N'Khách sạn', N'Khách sạn', N'Content/Images/LoaiKhachSan/KhachSan.jpg')
INSERT [dbo].[LoaiKhachSan] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (2, N'Biệt thự', N'Biệt thự', N'Content/Images/LoaiKhachSan/BietThu.jpg')
INSERT [dbo].[LoaiKhachSan] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (3, N'Resort', N'Resort', N'Content/Images/LoaiKhachSan/Resort.jpg')
INSERT [dbo].[LoaiKhachSan] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (4, N'Nhà khách', N'Nhà khách', N'Content/Images/LoaiKhachSan/NhaKhach.jpg')
INSERT [dbo].[LoaiKhachSan] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (8, N'Căn hộ', N'Căn hộ', N'Content/Images/LoaiKhachSan/CanHo.jpg')
INSERT [dbo].[LoaiKhachSan] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (9, N'Glamping', N'Glamping', N'Content/Images/LoaiKhachSan/Glamping.jpg')
SET IDENTITY_INSERT [dbo].[LoaiKhachSan] OFF
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (1, N'Phòng Tiêu chuẩn', 15, 350, N'1 Giường đơn', N'Phòng này có một số trang thiết bị đơn giản.', 0, 1)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (2, N'Phòng Trăng Mật', 15, 400, N'1 Giường đôi', N'Phòng này có máy lạnh, minibar và được cách âm. Phòng này được trang trí bằng hoa và bánh ngọt.', 1, 2)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (3, N'Phòng Cao Cấp', 20, 400, N'1 Giường đôi', N'Phòng cách âm này có máy lạnh.', 1, 3)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (4, N'Phòng Gia Đình', 25, 500, N'2 Giường đôi', N'Phòng gia đình này có quầy bar mini, truyền hình cáp và máy lạnh.', 1, 4)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (5, N'Phòng Trung Cấp', 10, 200, N'1 Giường đơn', N'Phòng trung cấp nên chẳng có gì hết, thích hợp với bọn kiết xác.', 0, 5)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (6, N'Phòng Superior', 30, 600, N'1 Giường đôi', N'Phòng cách âm này có nhiều thứ vl.', 1, 6)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (7, N'Phòng Không', 15, 350, N'2 Giường đơn', N'Phòng không không quân.', 1, 8)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (8, N'Phòng Thủ', 15, 350, N'2 Giường đơn', N'Phòng gia đình này có quầy bar mini, truyền hình cáp và máy lạnh.', 1, 9)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (9, N'Phòng 4 Người', 15, 350, N'2 Giường đôi', N'Phòng có tivi siêu to khổng lồ.', 1, 10)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (10, N'Phòng 3 Người', 15, 350, N'2 Giường đơn', N'Phòng có truyền hình cáp và máy lạnh.', 1, 11)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (11, N'Phòng Ban', 15, 350, N'2 Giường đơn', N'Là cơ quan quyền lực cao nhất Công ty, quyết định cơ cấu tổ chức.', 1, 12)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (12, N'Phòng Đào Tạo', 25, 350, N'1 Giường đơn', N'Có trách nhiệm trong công tác tuyển sinh, quản lý chương trình đào tạo.', 1, 13)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (13, N'Phòng Deluxe Giường Đôi', 20, 500, N'1 Giường đôi lớn', N'This double room has air conditioning and electric kettle.', 1, 1)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (14, N'Phòng Tuyến', 18, 350, N'1 Giường đơn', N'Phòng gia đình này có quầy bar mini, truyền hình cáp và máy lạnh.', 1, 14)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (15, N'Phòng 2 Người', 25, 350, N'2 Giường đơn', N'Phòng được trang bị 2 máy tính, thích hợp để solo game.', 1, 15)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (16, N'Phòng 1 Người', 15, 350, N'1 Giường đơn', N'Phòng dành cho một người.', 1, 16)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (18, N'Phòng Trăng Mật', 15, 100, N'1 Giường đôi', N'Phòng này có máy lạnh, minibar và được cách âm. Phòng này được trang trí bằng hoa và bánh ngọt.', 1, 3)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (19, N'Phòng Cao Cấp', 20, 400, N'1 Giường đôi', N'Phòng cách âm này có máy lạnh.', 1, 4)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (20, N'Phòng Gia Đình', 25, 500, N'2 Giường đôi', N'Phòng gia đình này có quầy bar mini, truyền hình cáp và máy lạnh.', 1, 5)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (21, N'Phòng Trung Cấp', 10, 200, N'1 Giường đơn', N'Phòng trung cấp nên chẳng có gì hết, thích hợp với bọn kiết xác.', 0, 6)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (23, N'Phòng Tiêu chuẩn', 15, 220, N'2 Giường đơn', N'Phòng này ít thứ vl.', 1, 8)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (24, N'Phòng Không', 15, 350, N'2 Giường đơn', N'Phòng không không quân.', 1, 9)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (25, N'Phòng Thủ', 15, 350, N'2 Giường đơn', N'Phòng gia đình này có quầy bar mini, truyền hình cáp và máy lạnh.', 1, 10)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (26, N'Phòng 4 Người', 15, 350, N'2 Giường đôi', N'Phòng có tivi siêu to khổng lồ.', 1, 11)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (27, N'Phòng 3 Người', 15, 220, N'2 Giường đơn', N'Phòng có truyền hình cáp và máy lạnh.', 1, 12)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (28, N'Phòng Ban', 15, 350, N'2 Giường đơn', N'Là cơ quan quyền lực cao nhất Công ty, quyết định cơ cấu tổ chức.', 1, 13)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (29, N'Phòng Đào Tạo', 25, 410, N'1 Giường đơn', N'Có trách nhiệm trong công tác tuyển sinh, quản lý chương trình đào tạo.', 1, 14)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (30, N'Phòng Tuyến', 18, 350, N'1 Giường đơn', N'Phòng gia đình này có quầy bar mini, truyền hình cáp và máy lạnh.', 1, 15)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (31, N'Phòng 2 Người', 25, 350, N'2 Giường đơn', N'Phòng được trang bị 2 máy tính, thích hợp để solo game.', 1, 16)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (32, N'Phòng 1 Người', 15, 260, N'1 Giường đơn', N'Phòng dành cho một người.', 1, 1)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (33, N'Phòng Deluxe Giường Đôi', 20, 500, N'1 Giường đôi lớn', N'This double room has air conditioning and electric kettle.', 1, 3)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (34, N'Phòng Trăng Mật', 15, 400, N'1 Giường đôi', N'Phòng giường đôi này có ban công, TV truyền hình vệ tinh và máy lạnh.', 1, 4)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (35, N'Phòng Cao Cấp', 20, 150, N'1 Giường đôi', N'Phòng cách âm này có máy lạnh.', 1, 5)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (36, N'Phòng Gia Đình', 25, 600, N'2 Giường đôi', N'Phòng gia đình này có quầy bar mini, truyền hình cáp và máy lạnh.', 1, 6)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (37, N'Phòng Trung Cấp', 10, 200, N'1 Giường đơn', N'This apartment features a electric kettle and air conditioning.', 0, 7)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (38, N'Phòng Superior', 30, 150, N'1 Giường đôi', N'Phòng cách âm này có nhiều thứ vl.', 1, 8)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (39, N'Phòng Tiêu chuẩn', 15, 420, N'2 Giường đơn', N'Phòng này ít thứ vl.', 1, 9)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (40, N'Phòng Không', 15, 400, N'2 Giường đơn', N'Phòng không không quân.', 1, 10)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (41, N'Phòng Thủ', 15, 350, N'2 Giường đơn', N'This twin room has a electric kettle and air conditioning.', 1, 11)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (42, N'Phòng 4 Người', 15, 350, N'2 Giường đôi', N'Phòng có tivi siêu to khổng lồ.', 1, 12)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (43, N'Phòng 3 Người', 15, 350, N'2 Giường đơn', N'Phòng có truyền hình cáp và máy lạnh.', 1, 13)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (44, N'Phòng Ban', 15, 350, N'2 Giường đơn', N'Là cơ quan quyền lực cao nhất Công ty, quyết định cơ cấu tổ chức.', 1, 14)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (45, N'Phòng Đào Tạo', 25, 450, N'1 Giường đơn', N'Có trách nhiệm trong công tác tuyển sinh, quản lý chương trình đào tạo.', 1, 15)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (46, N'Phòng Tuyến', 18, 250, N'2 Giường đơn', N'Phòng 2 giường đơn này được trang bị ban công, áo choàng tắm cùng máy lạnh.', 1, 16)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (47, N'Phòng 2 Người', 25, 330, N'2 Giường đơn', N'Phòng được trang bị 2 máy tính, thích hợp để solo game.', 1, 1)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (48, N'Phòng 1 Người', 15, 350, N'1 Giường đơn', N'Phòng dành cho một người.', 1, 2)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (49, N'Phòng Streamer', 25, 450, N'1 Giường đơn', N'Phòng chuyên dành cho sờ chim mơ.', 0, 2)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (50, N'Phòng Vinahouse', 22, 999, N'1 Giường đơn', N'Phòng chuyên dành Khá Bảnh.', 0, 3)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (51, N'Phòng Thuốc Lào', 4, 199, N'1 Giường đơn', N'Vào làm vài bi nào mấy em, phê cùng anh.', 0, 4)
INSERT [dbo].[Phong] ([Id], [Ten], [DienTich], [GiaThue], [TienNghi], [MoTa], [LoaiGiuong], [IdKhachSan]) VALUES (52, N'Phòng Trần Dần', 1, 399, N'1 Giường đơn', N'Nhà tiên tri lộn xào vũ trụ Trần Dần và các ba que tụ họp.', 0, 5)
SET IDENTITY_INSERT [dbo].[Phong] OFF
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [HoTen], [GioiTinh], [SoDienThoai], [Email], [IsAdmin]) VALUES (N'a', N'1', N'Nam', 1, N'0234565422', N'abc@gmail.com', 0)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [HoTen], [GioiTinh], [SoDienThoai], [Email], [IsAdmin]) VALUES (N'admin', N'111', N'admin', 1, N'034356xxx09', N'buivanbaoth@gmail.com', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [HoTen], [GioiTinh], [SoDienThoai], [Email], [IsAdmin]) VALUES (N'User', N'123456', N'Người Dùng', 0, N'0358763412', N'user@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[ThanhPho] ON 

INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (1, N'Hà Nội', N'Thành Phố Hà Nội', N'Content/Images/ThanhPho/HaNoi.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (2, N'TP. Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Content/Images/ThanhPho/HoChiMinh.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (3, N'Đà Nẵng', N'Thành Phố Đà Nẵng', N'Content/Images/ThanhPho/DaNang.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (4, N'Đà Lạt', N'Thành Phố Đà Lạt', N'Content/Images/ThanhPho/DaLat.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (5, N'Hội An', N'Thành Phố Hội An', N'Content/Images/ThanhPho/HoiAn.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (6, N'Phú Quốc', N'Thành Phố Phú Quốc', N'Content/Images/ThanhPho/PhuQuoc.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (7, N'Sapa', N'Thành Phố Sapa', N'Content/Images/ThanhPho/sapa.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (8, N'Huế', N'Thành Phố Huế', N'Content/Images/ThanhPho/Hue.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (9, N'Nha Trang', N'Thành Phố Nha Trang', N'Content/Images/ThanhPho/NhaTrang.jpg')
INSERT [dbo].[ThanhPho] ([Id], [Ten], [MoTa], [UrlHinhAnh]) VALUES (10, N'Buôn Ma Thuột', N'Thành Phố Buôn Ma Thuột', N'Content/Images/ThanhPho/BuonMaThuot.jpg')
SET IDENTITY_INSERT [dbo].[ThanhPho] OFF
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD FOREIGN KEY([IdLoaiKhachSan])
REFERENCES [dbo].[LoaiKhachSan] ([Id])
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD FOREIGN KEY([IdThanhPho])
REFERENCES [dbo].[ThanhPho] ([Id])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([IdKhachSan])
REFERENCES [dbo].[KhachSan] ([Id])
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD CHECK  (([BuaAn]>=(0) AND [BuaAn]<=(4)))
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD CHECK  (([DanhGia]>=(0) AND [DanhGia]<=(5)))
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD CHECK  (([LoaiGiuong]>=(0) AND [LoaiGiuong]<=(1)))
GO
USE [master]
GO
ALTER DATABASE [Quanlykhachsan] SET  READ_WRITE 
GO
