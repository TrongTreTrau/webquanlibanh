USE [master]
GO
/****** Object:  Database [QLHaiSan]    Script Date: 7/9/2022 2:23:37 PM ******/
CREATE DATABASE [QLHaiSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLHaiSan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLHaiSan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLHaiSan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLHaiSan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLHaiSan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLHaiSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLHaiSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLHaiSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLHaiSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLHaiSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLHaiSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLHaiSan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLHaiSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLHaiSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLHaiSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLHaiSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLHaiSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLHaiSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLHaiSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLHaiSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLHaiSan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLHaiSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLHaiSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLHaiSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLHaiSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLHaiSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLHaiSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLHaiSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLHaiSan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLHaiSan] SET  MULTI_USER 
GO
ALTER DATABASE [QLHaiSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLHaiSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLHaiSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLHaiSan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLHaiSan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLHaiSan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLHaiSan] SET QUERY_STORE = OFF
GO
USE [QLHaiSan]
GO
/****** Object:  Table [dbo].[CauHinh]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHinh](
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NULL,
 CONSTRAINT [PK_CauHinh] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [float] NULL,
	[DonGiaBan] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_tblChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[TieuDe] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](250) NULL,
	[NgayGui] [datetime] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayXuatHD] [date] NULL,
	[HinhThucThanhToan] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
	[MaKH] [int] NULL,
	[MaNV] [int] NULL,
	[DaXoa] [tinyint] NULL,
	[status] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DiaChiGiaoHang] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [varchar](20) NULL,
	[Email] [nvarchar](150) NOT NULL,
	[MatKhau] [nvarchar](255) NULL,
	[TrangThaiTaiKhoan] [bit] NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](150) NULL,
	[DaXoa] [tinyint] NULL,
 CONSTRAINT [PK_tblLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Email] [nvarchar](150) NULL,
	[SDT] [varchar](20) NULL,
	[DaXoa] [tinyint] NULL,
 CONSTRAINT [PK_tblNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](150) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nchar](20) NULL,
	[Email] [nvarchar](255) NULL,
	[MatKhau] [varchar](255) NULL,
	[IsAdmin] [tinyint] NULL,
	[DaXoa] [tinyint] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/9/2022 2:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[DVT] [nvarchar](20) NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [float] NULL,
	[MaLoai] [int] NULL,
	[MaNCC] [int] NULL,
	[MoTa] [nvarchar](255) NULL,
	[HinhAnh] [nvarchar](255) NULL,
	[DonGiaBan] [float] NULL,
	[DaXoa] [tinyint] NULL,
 CONSTRAINT [PK_tblSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CauHinh] ([Key], [Value]) VALUES (N'DiaChi', N'Q12 , Thành Phố HCM')
INSERT [dbo].[CauHinh] ([Key], [Value]) VALUES (N'DienThoai', N'0358448221')
INSERT [dbo].[CauHinh] ([Key], [Value]) VALUES (N'TenCongTy', N'Cửa Hàng Kinh Doanh Hải Sản HTC')
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (2, 9, 1, 200000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (3, 20, 1, 1500000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (4, 9, 1, 200000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (5, 12, 1, 95000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (6, 14, 1, 80000, NULL)
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [HoTen], [Email], [TieuDe], [NoiDung], [NgayGui]) VALUES (6, N'cong', N'cong@gmail.com', N'abc', N'toi can ho tro don hang abcxyz', CAST(N'2022-06-07T08:16:32.663' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayXuatHD], [HinhThucThanhToan], [TongTien], [MaKH], [MaNV], [DaXoa], [status], [SoLuong], [DiaChiGiaoHang]) VALUES (2, CAST(N'2022-06-05' AS Date), N'Thanh toán khi nhận hàng', 200000, 5, NULL, NULL, N'Đang giao hàng', 1, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NgayXuatHD], [HinhThucThanhToan], [TongTien], [MaKH], [MaNV], [DaXoa], [status], [SoLuong], [DiaChiGiaoHang]) VALUES (3, CAST(N'2022-06-05' AS Date), NULL, 1500000, 5, NULL, NULL, N'Giao hàng thành công', 1, N'12321313 ,Thành phố Long Xuyên ,An Giang')
INSERT [dbo].[HoaDon] ([MaHD], [NgayXuatHD], [HinhThucThanhToan], [TongTien], [MaKH], [MaNV], [DaXoa], [status], [SoLuong], [DiaChiGiaoHang]) VALUES (4, CAST(N'2022-06-07' AS Date), N'MoMo', 200000, 5, NULL, NULL, N'Giao hàng thành công', 1, N' ,Huyện Cần Đước ,Long An')
INSERT [dbo].[HoaDon] ([MaHD], [NgayXuatHD], [HinhThucThanhToan], [TongTien], [MaKH], [MaNV], [DaXoa], [status], [SoLuong], [DiaChiGiaoHang]) VALUES (5, CAST(N'2022-06-18' AS Date), N'Thanh toán khi nhận hàng', 95000, 5, NULL, NULL, N'Chờ xử lý', 1, N'ấp 1 ,Thị xã Phú Mỹ ,Bà Rịa - Vũng Tàu')
INSERT [dbo].[HoaDon] ([MaHD], [NgayXuatHD], [HinhThucThanhToan], [TongTien], [MaKH], [MaNV], [DaXoa], [status], [SoLuong], [DiaChiGiaoHang]) VALUES (6, CAST(N'2022-06-18' AS Date), N'Thanh toán khi nhận hàng', 80000, 5, NULL, NULL, N'Chờ xử lý', 1, N'ap 7 ,Huyện Đồng Phú ,Bình Phước')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MatKhau], [TrangThaiTaiKhoan]) VALUES (3, N'123 123', NULL, NULL, N'123@gmail.com', N'202cb962ac59075b964b07152d234b70', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MatKhau], [TrangThaiTaiKhoan]) VALUES (4, N'Công Thành Nguyễn', NULL, NULL, N'ntctv040401@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MatKhau], [TrangThaiTaiKhoan]) VALUES (5, N'kh1 kh122', N'', N'222222333', N'kh1@gmail.com', N'25d55ad283aa400af464c76d713c07ad', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MatKhau], [TrangThaiTaiKhoan]) VALUES (6, N'kh2', N'', N'', N'kh2@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MatKhau], [TrangThaiTaiKhoan]) VALUES (7, N'kh3', N'', N'', N'kh3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MatKhau], [TrangThaiTaiKhoan]) VALUES (8, N'nguyen Thanh Cong', N'', N'', N'thanhcong04042001@gmail.com', N'25d55ad283aa400af464c76d713c07ad', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MatKhau], [TrangThaiTaiKhoan]) VALUES (9, N'Ngo Hau', NULL, NULL, N'nhokllzoda@gmail.com', N'25d55ad283aa400af464c76d713c07ad', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (1, N'Tôm', 0)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (2, N'Cua', 0)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (3, N'Ốc', 0)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (6, N'11', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (7, N'asddd', 0)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (8, N'oke', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (9, N'huhgugyuguuhihiuhi', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (10, N'Cá', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (11, N'dfgdfgdgrd', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (1011, N'fjghgjghj', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [DaXoa]) VALUES (1012, N'fjghgjghj', 1)
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT], [DaXoa]) VALUES (1, N'qưe', N'qqwe', N'qưeqew', N'123', 0)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT], [DaXoa]) VALUES (2, N'NCC2', N'', N'ncc@gmail.com', N'', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT], [DaXoa]) VALUES (3, N'NCC3', N'', N'ncc@gmail.com', N'', NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [SDT], [Email], [MatKhau], [IsAdmin], [DaXoa]) VALUES (1, N'nhanvien 1', CAST(N'2001-04-04' AS Date), N'ádsadsa', 1, N'123123              ', N'123@gmail.com', NULL, 0, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [SDT], [Email], [MatKhau], [IsAdmin], [DaXoa]) VALUES (2, N'asasdfasd', CAST(N'2022-04-05' AS Date), NULL, 0, N'asdadsa             ', N'asdasd@gmail.com', N'123', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [SDT], [Email], [MatKhau], [IsAdmin], [DaXoa]) VALUES (7, N'ADMIN', NULL, NULL, NULL, NULL, N'admin@gmail.com', N'21232f297a57a5a743894a0e4a801fc3', 1, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [SDT], [Email], [MatKhau], [IsAdmin], [DaXoa]) VALUES (9, N'asasdfasd', CAST(N'2005-05-04' AS Date), N'', NULL, N'                    ', N'asdasd@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (9, N'Ngêu Biển', N'kg', 100, 120000, 3, 2, N'', N'ngheu-bien_bc499c29-d7df-41b6-8089-b31ac7c07756_20220608124509.jpg', 200000, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (10, N'Cua Hoàng Đế', N'2-4kg/con', 120, 2000000, 1, 3, N'', N'king-crab_4d8de5a1-759e-4d87-8589-6b8aba147657_20220608124709.jpg', 2400000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (11, N'dfv', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (12, N'Sò Mía Thiên Nhiên', N'kg', 199, 70000, 3, 2, N'', N'so-mia-thien-nhien_c6339dce-9c83-46c1-8363-47fa75bdf092_20220608124846.jpg', 95000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (13, N'Ốc Hương', N'kg', 200, 700000, 3, 1, N'', N'oc-huong-size-40-55conkg_7606a421-cafd-475a-ab87-4924ba16630b_20220608011009.jpg', 850000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (14, N'Hàu Canada', N'con', 199, 60000, 3, 2, N'', N'hau-canada_643b93a7-bebe-49bb-a203-3801660aa9fb_20220608011231.jpg', 80000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (15, N'Bào Ngư Hàn Quốc', N'kg', 200, 1300000, 3, 3, N'', N'bao-ngu-han-quoc-kg_e2eed310-714f-4a16-ac85-beb8a600b9a1_20220608011342.jpg', 1600000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (16, N'Cua Đá', N'Kg', 100, 800000, 2, 3, N'', N'index_20220624082935.jpg', 900000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (17, N'dsffd', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (20, N'123', N'con 2 - 3 kg', 122, 1200000, 1, 1, N'ádsadasss', N'Hai-san-la-gi-ten-cac-loai-hai-san_20220422093152.jpg', 1500000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (21, N'Ốc Bươu', N'kg', 120, 120000, 1, 3, N'', N'oc-buou-hap-tieu_20220624083102.jpg', 200000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (22, N'123', N'con 2 - 3 kg', 123, 1200000, 3, 1, N'ádsadassaagvasga', NULL, 1500000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSanPham], [DVT], [SoLuong], [DonGiaNhap], [MaLoai], [MaNCC], [MoTa], [HinhAnh], [DonGiaBan], [DaXoa]) VALUES (23, N'Cá Ngừ', N'kg', 150, 300000, 10, 3, N'', N'cá-ngừ-1_20220624101008.jpg', 350000, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_TrangThaiTaiKhoan]  DEFAULT ((1)) FOR [TrangThaiTaiKhoan]
GO
ALTER TABLE [dbo].[Loai] ADD  CONSTRAINT [DF_Loai_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  CONSTRAINT [DF_NhaCungCap_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDon_tblSanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_tblChiTietHoaDon_tblSanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblKhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_tblLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_tblSanPham_tblLoai]
GO
USE [master]
GO
ALTER DATABASE [QLHaiSan] SET  READ_WRITE 
GO
