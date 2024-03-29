USE [QLBanHang]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](20) NULL,
	[Pass] [nchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
	[ChucVu] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDonMua]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonMua](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idDH] [int] NOT NULL,
	[idSp] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[giaBan] [int] NOT NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_CTDonMuaSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDonMuaDaXoa]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonMuaDaXoa](
	[Id] [int] NOT NULL,
	[idDH] [int] NOT NULL,
	[idSp] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[giaBan] [int] NULL,
	[ThanhTien] [int] NULL,
	[ngayXoa] [datetime] NULL DEFAULT (getdate())
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idSp] [int] NOT NULL,
	[IdPN] [int] NULL,
	[GiaNhap] [int] NULL,
	[GiaBan] [int] NULL,
	[SLNhap] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuNhapSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idKH] [int] NOT NULL,
	[NgayMua] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[NgayGiaoHang] [datetime] NOT NULL,
	[DiachiGiaoHang] [nvarchar](max) NOT NULL,
	[TrangThai] [int] NULL,
	[TenNV] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonMuaSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONHANGDAXOA]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANGDAXOA](
	[Id] [int] NOT NULL,
	[idKH] [int] NOT NULL,
	[NgayMua] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[NgayGiaoHang] [datetime] NOT NULL,
	[DiachiGiaoHang] [nvarchar](max) NOT NULL,
	[TenNV] [nvarchar](max) NULL,
	[ngayXoa] [datetime] NULL CONSTRAINT [DF__DONHANGDA__ngayX__55BFB948]  DEFAULT (getdate())
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DungLuong]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DungLuong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DungTich] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DungLuongSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GioiTinh] [nchar](10) NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](max) NOT NULL,
	[Sdt] [int] NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[tenDN] [nvarchar](max) NOT NULL,
	[pass] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_KhachHangSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanHieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanHieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHieu] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NhanHieuSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NongDo]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NongDo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nongdo] [nchar](50) NOT NULL,
 CONSTRAINT [PK_NongDoSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NPP]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NPP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNPP] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NhaPPSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdNPP] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[TenNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[tensp] [nvarchar](max) NOT NULL,
	[phai] [int] NOT NULL,
	[dvt] [nvarchar](max) NULL,
	[GiaBan] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[mota] [nvarchar](max) NULL,
	[idHieu] [int] NOT NULL,
	[idDungLuong] [int] NOT NULL,
	[idNongDo] [int] NOT NULL,
	[Sale] [float] NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_sanphamSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [Username], [Pass], [HoTen], [ChucVu], [MoTa]) VALUES (1, N'Admin               ', N'123456              ', N'ManDy', NULL, N'Quản Lý')
INSERT [dbo].[Admin] ([id], [Username], [Pass], [HoTen], [ChucVu], [MoTa]) VALUES (2, N'Nhanvien1           ', N'123456              ', N'Hoàng Vĩ', 2, N'Duyệt Đơn Hàng')
INSERT [dbo].[Admin] ([id], [Username], [Pass], [HoTen], [ChucVu], [MoTa]) VALUES (3, N'Nhanvien2           ', N'123456              ', N'Minh Thường', 3, N'Kiểm Kho')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[CTDonMua] ON 

INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (41, 11, 1, 1, 4000000, 4000000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (42, 11, 12, 1, 2800000, 2800000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (47, 15, 9, 1, 1000000, 1000000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (48, 15, 1, 1, 4000000, 4000000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (49, 16, 20, 1, 250000, 250000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (51, 19, 2, 1, 1800000, 1440000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (52, 19, 4, 1, 1500000, 1500000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (53, 20, 2, 2, 3000000, 4800000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (54, 21, 15, 1, 1700000, 1700000)
INSERT [dbo].[CTDonMua] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien]) VALUES (55, 22, 2, 1, 3000000, 2400000)
SET IDENTITY_INSERT [dbo].[CTDonMua] OFF
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (39, 8, 2, 10, 100000, NULL, CAST(N'2018-05-04 23:23:32.170' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (40, 9, 2, 10, 100000, NULL, CAST(N'2018-05-04 23:23:32.180' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (45, 2, 2, 13, 1800000, 3600000, CAST(N'2018-05-20 16:00:17.873' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (46, 5, 1, 13, 2050000, 2050000, CAST(N'2018-05-20 16:00:17.873' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (43, 12, 9, 2, 1000000, 2000000, CAST(N'2018-05-20 16:12:04.407' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (44, 12, 8, 1, 800000, 800000, CAST(N'2018-05-20 16:12:04.430' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (4, 4, 5, 2, 2050000, 4100000, CAST(N'2018-05-20 16:23:17.783' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (33, 4, 8, 2, 100000, NULL, CAST(N'2018-05-20 16:23:17.790' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (34, 4, 9, 2, 100000, NULL, CAST(N'2018-05-20 16:23:17.790' AS DateTime))
INSERT [dbo].[CTDonMuaDaXoa] ([Id], [idDH], [idSp], [SoLuong], [giaBan], [ThanhTien], [ngayXoa]) VALUES (50, 18, 1, 1, 4000000, 4000000, CAST(N'2018-05-23 23:27:37.293' AS DateTime))
SET IDENTITY_INSERT [dbo].[CTPhieuNhap] ON 

INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (18, 1, 4, 3000000, 4500000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (19, 2, 4, 1200000, 1800000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (20, 4, 4, 1000000, 1500000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (21, 5, 4, 1400000, 2050000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (22, 6, 4, 2400000, 3500000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (23, 7, 4, 1200000, 1800000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (25, 8, 4, 600000, 800000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (27, 9, 4, 800000, 1000000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (28, 14, 5, 900000, 1200000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (29, 12, 5, 2300000, 2800000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (30, 13, 5, 900000, 1200000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (35, 15, 5, 900000, 1200000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (36, 18, 5, 150000, 300000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (37, 19, 5, 150000, 400000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (38, 20, 5, 150000, 250000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (39, 24, 6, 1200000, 1600000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (40, 26, 6, 120000, 300000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (41, 27, 6, 1800000, 2500000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (42, 28, 6, 1800000, 250000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (43, 30, 6, 1800000, 250000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (44, 32, 6, 1800000, 2900000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (45, 33, 6, 800000, 1000000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (46, 51, 6, 2800000, 3500000, 10)
INSERT [dbo].[CTPhieuNhap] ([Id], [idSp], [IdPN], [GiaNhap], [GiaBan], [SLNhap]) VALUES (47, 64, 15, 1, 1, 10)
SET IDENTITY_INSERT [dbo].[CTPhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[DatHang] ON 

INSERT [dbo].[DatHang] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TrangThai], [TenNV]) VALUES (11, 3, CAST(N'2018-05-07 11:09:32.900' AS DateTime), 6800000, CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'3 Thành Thái, Quận 10', 2, N'Mỹ Dân')
INSERT [dbo].[DatHang] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TrangThai], [TenNV]) VALUES (15, 5, CAST(N'2018-05-20 21:47:35.433' AS DateTime), 5000000, CAST(N'2018-05-22 13:48:39.543' AS DateTime), N'88 Lê Lợi, Quận 1', 2, N'Mỹ Dân')
INSERT [dbo].[DatHang] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TrangThai], [TenNV]) VALUES (16, 4, CAST(N'2018-05-20 21:48:34.847' AS DateTime), 250000, CAST(N'2018-05-23 17:09:21.490' AS DateTime), N'66 Le lai , q1', 2, N'Mỹ Dân')
INSERT [dbo].[DatHang] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TrangThai], [TenNV]) VALUES (19, 5, CAST(N'2018-05-22 13:36:13.737' AS DateTime), 2940000, CAST(N'2018-05-23 11:06:22.447' AS DateTime), N'99 Lý Thường Kiệt, Q.Tân Bình', 2, N'Mỹ Dân')
INSERT [dbo].[DatHang] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TrangThai], [TenNV]) VALUES (20, 4, CAST(N'2018-05-23 18:41:03.720' AS DateTime), 4800000, CAST(N'2018-05-23 18:46:43.023' AS DateTime), N'18 ly bán bjichj', 2, N'Mỹ Dân')
INSERT [dbo].[DatHang] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TrangThai], [TenNV]) VALUES (21, 10, CAST(N'2018-05-23 23:23:15.630' AS DateTime), 1700000, CAST(N'2018-05-25 00:00:00.000' AS DateTime), N'120 Lý Thường Kiệt', 0, NULL)
INSERT [dbo].[DatHang] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TrangThai], [TenNV]) VALUES (22, 10, CAST(N'2018-05-23 23:25:12.147' AS DateTime), 2400000, CAST(N'2018-05-25 00:00:00.000' AS DateTime), N'12 Lũy Bán Bích, Quận Tân Phú', 0, NULL)
SET IDENTITY_INSERT [dbo].[DatHang] OFF
INSERT [dbo].[DONHANGDAXOA] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TenNV], [ngayXoa]) VALUES (10, 1, CAST(N'2017-01-23 00:00:00.000' AS DateTime), 0, CAST(N'2017-12-03 00:00:00.000' AS DateTime), N'737 Ly Thuong Kiet', NULL, CAST(N'2018-05-04 23:23:32.180' AS DateTime))
INSERT [dbo].[DONHANGDAXOA] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TenNV], [ngayXoa]) VALUES (13, 1, CAST(N'2018-05-08 15:35:29.297' AS DateTime), 5650000, CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'58 ly thuong kiwt', NULL, CAST(N'2018-05-20 16:00:17.877' AS DateTime))
INSERT [dbo].[DONHANGDAXOA] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TenNV], [ngayXoa]) VALUES (12, 3, CAST(N'2018-05-07 11:11:05.857' AS DateTime), 2800000, CAST(N'2018-05-20 15:56:37.133' AS DateTime), N'12 Lũy Bán Bích, Quận Tân Phú', N'Mỹ Dân', CAST(N'2018-05-20 16:12:04.430' AS DateTime))
INSERT [dbo].[DONHANGDAXOA] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TenNV], [ngayXoa]) VALUES (4, 2, CAST(N'2018-04-27 11:58:00.313' AS DateTime), 4100000, CAST(N'2018-04-29 00:00:00.000' AS DateTime), N'120 Lý Thường Kiệt', N'Mỹ Dân', CAST(N'2018-05-20 16:23:17.790' AS DateTime))
INSERT [dbo].[DONHANGDAXOA] ([Id], [idKH], [NgayMua], [TongTien], [NgayGiaoHang], [DiachiGiaoHang], [TenNV], [ngayXoa]) VALUES (18, 4, CAST(N'2018-05-21 22:38:17.663' AS DateTime), 4000000, CAST(N'2018-05-23 00:00:00.000' AS DateTime), N'85 Sư Vạn Hanh, Quận 10', N'Mỹ Dân', CAST(N'2018-05-23 23:27:37.297' AS DateTime))
SET IDENTITY_INSERT [dbo].[DungLuong] ON 

INSERT [dbo].[DungLuong] ([Id], [DungTich]) VALUES (1, N'5ml')
INSERT [dbo].[DungLuong] ([Id], [DungTich]) VALUES (2, N'7.5ml')
INSERT [dbo].[DungLuong] ([Id], [DungTich]) VALUES (3, N'50ml')
INSERT [dbo].[DungLuong] ([Id], [DungTich]) VALUES (4, N'100ml')
SET IDENTITY_INSERT [dbo].[DungLuong] OFF
SET IDENTITY_INSERT [dbo].[GioiTinh] ON 

INSERT [dbo].[GioiTinh] ([id], [GioiTinh]) VALUES (1, N'Nữ        ')
INSERT [dbo].[GioiTinh] ([id], [GioiTinh]) VALUES (2, N'Nam       ')
INSERT [dbo].[GioiTinh] ([id], [GioiTinh]) VALUES (3, N'Unisex    ')
SET IDENTITY_INSERT [dbo].[GioiTinh] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (1, N'Nguyễn Thị Mỹ Dân', 974867680, N'128 Nguyen Son, Q.tan PHu', N'mydan0211', N'123456')
INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (2, N'Đỗ Thị Thúy Na', 978765458, N'87 Nhà Bè, Quận 7', N'thuyna', N'123456')
INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (3, N'Trương Hoàng Vĩ', 979876463, N'111 Lý thường kiệt, Quận Tân BÌnh', N'hoangvi', N'123456')
INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (4, N'Mỹ Duyên', 976205076, N'12 nguyễn sơn, Quận Tân Phú', N'duyenmy', N'md21197')
INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (5, N'Lê Thị Trang', 1223331111, N'7 Đỗ Xuân Hợp, Thủ Đức', N'trangle', N'1234567')
INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (8, N'asdas', 12312, N'awdawd', N'wqeqw', N'231')
INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (9, N'asdas', 12312, N'awdawd', N'wqeqw', N'231')
INSERT [dbo].[KhachHang] ([Id], [Hoten], [Sdt], [DiaChi], [tenDN], [pass]) VALUES (10, N'Dương Nguyễn', 979876463, N'128 Nguyen Son, Q.tan PHu', N'duongnguyen', N'123456')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NhanHieu] ON 

INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (1, N'Chanel')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (2, N'Dior')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (3, N'Ck')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (4, N'DKNY')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (5, N'Valentino')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (6, N'Victoria''s Secret')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (7, N'Versace')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (8, N'Tom Ford')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (9, N'Narciso')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (10, N'Marc Jacorb')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (11, N'Gucci')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (12, N'Guess')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (13, N'Hermes')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (14, N'Hugo Boss')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (15, N'Lacome')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (16, N'Lavin')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (17, N'Bvlgari')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (18, N'Bubbery')
INSERT [dbo].[NhanHieu] ([Id], [TenHieu]) VALUES (19, N'Jo Malone')
SET IDENTITY_INSERT [dbo].[NhanHieu] OFF
SET IDENTITY_INSERT [dbo].[NongDo] ON 

INSERT [dbo].[NongDo] ([Id], [nongdo]) VALUES (7, N'Eau de Parfum                                     ')
INSERT [dbo].[NongDo] ([Id], [nongdo]) VALUES (8, N'Eau de Toilete                                    ')
SET IDENTITY_INSERT [dbo].[NongDo] OFF
SET IDENTITY_INSERT [dbo].[NPP] ON 

INSERT [dbo].[NPP] ([Id], [TenNPP]) VALUES (1, N'Missi')
INSERT [dbo].[NPP] ([Id], [TenNPP]) VALUES (2, N'TheGioiNuocHoa')
INSERT [dbo].[NPP] ([Id], [TenNPP]) VALUES (3, N'Orchard')
SET IDENTITY_INSERT [dbo].[NPP] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (4, 1, CAST(N'2018-05-19 15:26:09.063' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (5, 2, CAST(N'2018-05-19 15:28:40.840' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (6, 3, CAST(N'2018-05-19 22:17:06.840' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (9, 2, CAST(N'2018-05-22 13:49:39.177' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (10, 1, CAST(N'2018-05-22 13:49:45.190' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (11, 2, CAST(N'2018-05-23 15:35:12.937' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (12, 2, CAST(N'2018-05-23 17:20:24.953' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (13, 1, CAST(N'2018-05-23 17:21:54.050' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (14, 1, CAST(N'2018-05-23 17:30:08.900' AS DateTime), N'Mỹ Dân')
INSERT [dbo].[PhieuNhap] ([id], [IdNPP], [NgayNhap], [TenNV]) VALUES (15, 1, CAST(N'2018-05-23 17:30:58.550' AS DateTime), N'Mỹ Dân')
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (1, N'Chanel Coco', 1, N'chai1', 4500000, N'channel.jpg', N'Coco Mademoiselle Parfum cho ra mắt EDP vào năm 2001 và phiên bản EDT vào năm 2002. Cả hai phiên bản này đều được sáng tạo bởi Jacques Polge – ông là nhà điều chế nước hoa cho Chanel từ năm 1978. Lần này chai nước hoa Coco Mademoiselle dành cho phái nữ được giới thiệu với phiên bản Parfum, với các thành phần hương của nó giàu sắc thái và độ tương phản. Chanel Coco Mademoiselle được ra mắt vào năm 2001, thuộc nhóm hương hoa cỏ phương đông, mang lại nét hiện đại đầy gợi cảm cho người sử dung.Lớp hương đầu của Coco Mademoiselle Parfum là sự kết hợp của hương trái cam Sicily, cam bergamot Calabria và hương trái bưởi Sicily. Lớp hương giữa là hương hoa cỏ được tạo ra bởi thành phần tinh chất hương hoa hồng tinh khiết kết hợp với tinh chất hương hoa nhài, kèm theo với hương trái vải mọng nước, ngon ngọt. Trong khi đó, lớp hương nền là sự kết hợp của thành phần hoắc hương Indonesia, cỏ lau Haity, vani Bourdon và xạ hương trắng. Dòng nước hoa này dành riêng cho những người phụ nữ hiện đại, gan dạ, yêu thích sự thanh lịch và sang trọng.', 1, 4, 7, 20, 11)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (2, N' Narciso Rodriguez For Her', 1, N'chai', 3000000, N'giftset2.jpg', N'nước hoa', 9, 4, 7, 20, 6)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (4, N'Very Sexy', 1, N'chai', 1500000, N'verrysexxy.jpg', N'Very Sexy for her 2014, một phiên bản mới của Very Sexy được ra mắt vào năm 2014, thuộc nhóm hương hoa cỏ trái cây. Mùi hương của Very Sexy for her 2014 mang lại nét nữ tính đầy cuốn hút cho các cô gái khi sử dụng..Hương thơm nữ tính của Very Sexy for her 2014 mở ra với nốt hương trái cây đầy tươi mát, được kết hợp từ hương cam chanh của quýt clementine và vị ngọt của quả mâm xôi đen. Tiếp đến là tầng hương giữa đầy thơm ngát được xây dựng từ bó hoa phong lan vani nở rộ. Rồi cuối cùng thoang thoảng nốt xạ hương quyến rũ tại lớp hương cuối bao phủ cả mùi hương nước hoa Very Sexy for her 2014.', 6, 4, 7, 0, 9)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (5, N'Gucci Bloom', 1, N'chai', 2050000, N'23167941_1887066221622850_2400186691084583506_n.jpg', N'Hương đặc trưng Gucci Bloom - mùi hương đến từ những loài hoa trắng Hương Đầu: Quả chanh vàng, Cây bạc hà.  Hương giữa: Lá hoa tím, Hoa hồng Bulgary.  Hương cuối: Sáp tổ ong. Gucci bắt đầu trở lại dưới sự dẫn dắt của giám đốc sáng tạoAlessandro Michele. Một đế chế thời trang và hương hoa vươn mình sống dậy sau nhiều năm chật vật không tìm ra được hướng phát triển. Dưới sự sáng tạo của bậc thầy nước hoaAlberto Morillas, dòng nước hoa Gucci lại được tái sinh và thu hút giới mộ điệu một lần nữa với siêu phẩm Gucci Bloom. Nước hoa Gucci Bloom được tạo ra giống như một khu vườn tràn ngập các loại hoa trắng, đưa người sử dụng lạc vào những giấc mơ hoa. .', 11, 4, 7, 20, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (6, N'TOM FORD ORCHID SOLEIL ', 1, N'chai', 3500000, N'tomford2.jpg', N'Xuất xứ : Pháp , Nhóm hương : Oriental Floral ( Hương Thơm Hoa Cỏ Phương Đông ).Tom Ford Orchid Soleil là một mùi hương rực rỡ và quyến rũ. Hương thơm nắm bắt được sự kỳ diệu của ánh nắng sáng chói nhất. Thành phần trong hương nước hoa này mở ra với những gia vị của hạt tiêu hồng, màu sắc vàng vọt cộng với sự tươi mới của cam đắng và cây bách. Tầng trung tâm rực rỡ của nó nở hoa với hoa huệ đỏ và hoa huệ trắng, được bao phủ bởi hương nền ấm của kem hạt dẻ, vani, cây hoắc hương và hoa phong lan. ', 8, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (7, N'Versace Eros pour femme', 1, N'chai', 1800000, N'get7.jpg', N'Hương Hoa cỏ Gỗ Xạ hương - Floral Woody Musk, Nữ tính, dịu dàng, tươi mới.Hương thơm nữ tính của Versace Eros pour femme mở ra với hương thơm cam chanh đầy tươi mát được xây dựng từ chanh vàng và cam Bergamot. Tiếp đến là tầng hương giữa đầy thơm ngát được xây dựng từ hương thơm của bó hoa chanh vàng, nhài sambac, hoa nhài và mẫu đơn. Cuối cùng lưu lại trên da nốt hương ấm áp và dịu nhẹ từ gỗ, xạ hương hoà quyện cùng hương Ambroxan.', 7, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (8, N'CK be', 3, N'chai', 800000, N'ckbe.jpg', N'Hương Gỗ Hoa cỏ Xạ hương - Woody Floral Musk,Nhẹ nhàng, tinh tế, gần gũi.. Nước hoa Ck Be của hãng Calvin Klein mang ý nghĩa là hãy là chính bạn - "Be Yourself". Là một mùi hương gỗ phương Đông hòa quyện với hương của cây oải hương, bạc hà và cây bách xù cùng với một nét tinh tế của quýt hồng và cỏ xanh. Nước hoa được sáng tạo bởi Ann Gottlieb từ năm 1996.', 3, 4, 8, 20, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (9, N'CK one Gone', 3, N'chai', 1000000, N'ckgold.jpg', N'Hương Gỗ - Woody, Ngọt ngào, quyến rũ, gợi cảm. Ck One Gold với mùi hương trẻ trung của hương trái cây và gỗ đầy năng lượng tươi mới. Nốt hương đầu với sự pha trộn của cam Bergamot, cây xô thơm. Nốt hương giữa tỏa sáng với dầu hoa cam, hoa nhài và hoa violet. Cỏ Vertiver, hoắc hương và gỗ Guaiac tạo nên vẻ gợi cảm, ấm áp kết thúc dai dẳng nhiều giờ sau cho phiên bản này.', 3, 4, 8, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (12, N'Dior Sauvage for men', 2, N'chai', 2800000, N'diorSauvage.jpg', N'Hương Cam chanh Thơm ngát - Citrus Aromatic, Nam tính, mạnh mẽ, cá tính..  Dior ra mắt nước hoa Sauvage mới của mình với tên có nguồn gốc từ các loại nước hoa Eau Sauvage từ năm 1966, mặc dù cả hai không cùng chung bộ sưu tập. Dior Sauvage for men được lấy cảm hứng từ không gian mở tự nhiên với bầu trời xanh, núi đá dưới ánh mặt trời, ra mắt vào năm 2015 và thuộc hương cam chanh thơm ngát đem lại cảm giác tự tin, mạnh mẽ và cuốn hút., Tất cả các hương của Dior Sauvage for men kết hợp và bổ trợ cho nhau vô cùng tuyệt vời để tạo ra 1 chai nước hoa mới lạ nhưng không kém phần cuốn hút và mang 1 cá tính rất riêng. Dior Sauvage for men là sự lựa chọn tuyệt vời cho những chàng chai yêu thích sự khám phá và tự do', 2, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (13, N'BVL Aqva Pour Homme', 3, N'chai', 1200000, N'aqua.jpg', N'Hương Thơm biển - Aromatic Aquatic, Phóng khoáng, nam tính, sâu lắng.   Nước hoa Aqva Pour Homme của Bvlgari là một mẫu nước hoa thuộc nhóm hương thơm biển, được ra mắt vào năm 2005 mang đến cảm giác tràn đầy hứng khởi và tươi mát. Hương thơm tinh khiết của quýt và tinh dầu lá chanh hòa quyện với hương hổ phách khơi dậy hương thơm trong lành tươi mới mang hơi thở cùa vùng Địa Trung Hải thanh lịch, thích hợp cho các quý ông có tinh thần mạnh mẽ, phóng khoáng và ưa thích sự mới mẻ. .. Aqva Pour Homme khởi đầu với hương thơm thanh khiết của tinh dầu lá chanh mang đến cảm giác tươi mát và dễ chịu đến tột cùng. ', 17, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (14, N'Versace Pour Hommee', 2, N'chai', 1200000, N'get19.jpg', N'Hương thơm Dương xỉ - Aromatic Fougere, Mạnh mẽ, lịch lãm, sành điệu, độc đáo. Versace Pour Homme là sự pha trộn các thành phần tinh chất có nguồn gốc Địa Trung Hải với hỗn hợp hương thơm hàng đầu rất phù hợp cho nam giới ngày nay: đó là những người đàn ông tri thức và tự tin, sống hài hòa với thế giới tự nhiên. Thông qua hương thơm đầy nam tính, dứt khoát, Versace Pour Homme liên kết sức mạnh và sự say mệ để tạo nên một người đàn ông năng động và thành đạt. ', 7, 4, 7, 10, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (15, N'Bubbery Blush', 1, N'chai1', 1700000, N'bbr.jpg', N'Hương Hoa Cỏ - Floral, Nữ tính, gợi cảm, tinh tế,.. My Burberry Blush một lần nữa mang chúng ta quay trở lại với khu vườn London, nhưng lần này là vào thời điểm khác biệt, khi tia nắng ban mai đầu tiên chiếu rọi lên những bông hoa trong vườn. Mùi hương nước hoa tươi mát với nốt hương cam quýt, một chút nhấn nhá trái cây ngọt ngào của hương lựu và táo xanh. Những cánh hoa hồng nằm ở nốt hương giữa giống như đặc trưng mùi hương của toàn bộ sưu tập và được đồng hành bởi những mùi hương hoa khác của khu vườn trong nắng sớm. Tổng thế sự hòa quyện tinh tế làm nên Blush đầy nữ tính nhưng không kém phần sang trọng và quyến rũ.', 18, 4, 8, 0, 9)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (18, N'Very Sexy Mini', 1, N'chai', 300000, N'verysexxymini.jpg', N'Very Sexy for her 2014, một phiên bản mới của Very Sexy được ra mắt vào năm 2014, thuộc nhóm hương hoa cỏ trái cây. Mùi hương của Very Sexy for her 2014 mang lại nét nữ tính đầy cuốn hút cho các cô gái khi sử dụng..Hương thơm nữ tính của Very Sexy for her 2014 mở ra với nốt hương trái cây đầy tươi mát, được kết hợp từ hương cam chanh của quýt clementine và vị ngọt của quả mâm xôi đen. Tiếp đến là tầng hương giữa đầy thơm ngát được xây dựng từ bó hoa phong lan vani nở rộ. Rồi cuối cùng thoang thoảng nốt xạ hương quyến rũ tại lớp hương cuối bao phủ cả mùi hương nước hoa Very Sexy for her 2014.', 6, 2, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (19, N'Rose Goldea Bvlgari mini', 1, N'chai', 400000, N'get8.jpg', N'Hương hoa cỏ Gỗ Xạ hương - Floral Woody Musk, 	Sang trọng, quyến rũ, tao nhã, thanh lịch. mùi hương đặc trưng của hoa hồng sẽ không lẫn vào đâu được như chính cái tên mà nhà chế tác đã được đặt cho sản phẩm Rose Goldea, bên cạnh đó tông hương sẽ được pha trộn giữa hương hoa nhài, sen và lựu tạo nên một mùi hương ấn tượng, sang trọng, quyến rũ khứu giác của ai đã vô tình ngửi phải. ', 17, 1, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (20, N'Bvlgari Omnia Crystalline mini', 1, N'chai', 250000, N's-l640.jpg', N'Hương hoa cỏ biển - Floral Aquatic, Bí ẩn, gợi cảm, tươi sáng... Omnia Crytalline được tạo ra từ bàn tay tài hoa Alberto Morillas. Ông lấy cảm hứng từ sự tuyệt mỹ của những viên pha lê để cho ra đời phiên bản nước hoa Omnia Crytalline thanh nhã và nhẹ nhàng tựa những cánh hoa. Hương gỗ Guaiac tươi mát kết hợp với hương cây tre, quả lê, hoa sen tạo nên mùi hương dịu nhẹ và thanh khiết thu hút mọi ánh nhìn. Nước hoa được ra mắt vào năm 2005.', 17, 1, 8, 10, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (24, N'Daisy Dream', 1, N'chai', 1600000, N'daisy.jpg', N'Hương Hoa cỏ Trái cây - Floral Fruity, Gợi cảm, quyến rũ, tinh tế...Trẻ trung, thanh lịch là phong cách của sản phẩm mới Daisy Dream Forever giới thiệu vào mùa hè 2015. Là phiên bản mới của Daisy Dream được giới thiệu trong năm 2014, Daisy Dream Forever lấy cảm hứng từ bầu trời xanh bất tận, thể hiện giấc mộng trẻ trung, quyến rủ của cô gái Marc Jacobs. Daisy Dream Forver được tạo ra bởi các nhà sản xuất nước hoa Alberto Morillas và Ann Gottlieb.', 10, 4, 8, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (26, N'Daisy Dream forever mini', 1, N'chai', 300000, N'daisy4.jpg', N'Hương Hoa cỏ Trái cây - Floral Fruity, Gợi cảm, quyến rũ, tinh tế...Trẻ trung, thanh lịch là phong cách của sản phẩm mới Daisy Dream Forever giới thiệu vào mùa hè 2015. Là phiên bản mới của Daisy Dream được giới thiệu trong năm 2014, Daisy Dream Forever lấy cảm hứng từ bầu trời xanh bất tận, thể hiện giấc mộng trẻ trung, quyến rủ của cô gái Marc Jacobs. Daisy Dream Forver được tạo ra bởi các nhà sản xuất nước hoa Alberto Morillas và Ann Gottlieb.', 10, 1, 8, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (27, N'Valentina Poudre', 1, N'chai', 2500000, N'valentino1.jpg', N'Hương Hoa cỏ Phương đông - Oriental Floral, Nữ tính, lôi cuốn, hấp dẫn... Valentina Poudre là hương thơm mới được ra mắt vào đầu 2016 bởi Valentino. Đây là hương thơm đặc trưng phương Đông dành cho phụ nữ được tạo ra bởi Aurelien Guichard. Valentina Poudre thuộc hương hoa cỏ phương Đông, đem lại cảm giác tự tin, nhẹ nhàng và lôi cuốn.', 5, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (28, N'Terre Dhermes Limited Edition 2016', 2, N'chai', 2500000, N'hermesterre.jpg', N'Hương Gỗ Cay Nồng - Woody Spicy
Phong cách :	Nam tính, chững chạc, phong trần.....Terre d’Hermes khởi đầu là hương cam và hương bưởi nhẹ nhàng, ngọt ngào. Tiếp đến là sự kết hợp của hương hạt tiêu và thiên trúc quỳ đầy quyến rũ của người đàn ông mạnh mẽ. Sau một vài giờ, những gì còn lại trên làn da sẽ là sự ấm áp, nhẹ nhàng của gỗ tuyết tùng, an tức hương, cỏ hương bài và cây hoắc hương. Tất cả tạo nên hỗn hợp hương tinh tế và nam tính.', 13, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (30, N'TERRE D''HERMÈS HERMES mini', 2, N'chai', 400000, N'hermesmini.jpg', N'Hương Gỗ Cay Nồng - Woody Spicy
Phong cách :	Nam tính, chững chạc, phong trần.....Terre d’Hermes khởi đầu là hương cam và hương bưởi nhẹ nhàng, ngọt ngào. Tiếp đến là sự kết hợp của hương hạt tiêu và thiên trúc quỳ đầy quyến rũ của người đàn ông mạnh mẽ. Sau một vài giờ, những gì còn lại trên làn da sẽ là sự ấm áp, nhẹ nhàng của gỗ tuyết tùng, an tức hương, cỏ hương bài và cây hoắc hương. Tất cả tạo nên hỗn hợp hương tinh tế và nam tính.', 13, 1, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (32, N'Nashi Blossom', 3, N'chai', 2900000, N'Jomalon.jpg', N'Nước hoa unisex Nashi Blossom được cho ra mắt vào năm 2016. Đây là dòng nước hoa Jo Malone thuộc nhóm Floral (Hương hoa cỏ) hướng đến độ tuổi trên 25 tuổi. Fabrice Pellegrin chính là nhà pha chế ra loại nước hoa này.

Nashi Blossom có độ lưu hương kém - 1 giờ đến 2 giờ và độ tỏa hương thuộc dạng rất gần - thoang thoảng trên làn da. Perfumista.vn khuyến cáo Nashi Blossom phù hợp để sử dụng trong cả ngày lẫn đêm vào mùa xuân. Bên cạnh đó, Hoa lê và Quả chanh vàng là hai hương bạn có thể dễ dàng cảm nhận được nhất khi sử dụng nước hoa này.', 19, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (33, N'CK one', 3, N'chai', 1000000, N'ck.jpg', N'nuoc hoa thơm', 3, 4, 8, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (51, N'Tom Ford Noir', 2, N'chai', 3500000, N'tomfordnoir.jpg', N'Nhóm hương :	Hương thơm cay nồng - Aromatic Spicy Phong cách :	Cổ điển, sang trọng, lịch lãm, mạnh mẽ. Hương đặc trưng  Hương đầu: Cam bergamot Ý, cỏ roi ngựa, cây ca-rum, hạt tiêu hồng, hoa tím. Hương giữa: Hạt tiêu đen, hạt nhục đậu khấu, nhựa Tuscan Iris, phong lữ Ai Cập, Bulgaria Rose, Clary Sage Hương cuối: Nhựa cây, hổ phách, hoắc hương Indonesia, cỏ vetiver, cầy hương, vani.', 19, 4, 7, 0, 10)
INSERT [dbo].[SanPham] ([Id], [tensp], [phai], [dvt], [GiaBan], [HinhAnh], [mota], [idHieu], [idDungLuong], [idNongDo], [Sale], [SLTon]) VALUES (64, N'abc', 1, N'chai', 1, N'abc.png', N'aaa', 7, 1, 7, NULL, 10)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[CTDonMua]  WITH CHECK ADD  CONSTRAINT [FK_CTDonMuaSet_DonMuaSet] FOREIGN KEY([idDH])
REFERENCES [dbo].[DatHang] ([Id])
GO
ALTER TABLE [dbo].[CTDonMua] CHECK CONSTRAINT [FK_CTDonMuaSet_DonMuaSet]
GO
ALTER TABLE [dbo].[CTDonMua]  WITH CHECK ADD  CONSTRAINT [FK_CTDonMuaSet_sanphamSet] FOREIGN KEY([idSp])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[CTDonMua] CHECK CONSTRAINT [FK_CTDonMuaSet_sanphamSet]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_PhieuNhap] FOREIGN KEY([IdPN])
REFERENCES [dbo].[PhieuNhap] ([id])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhapSet_sanphamSet] FOREIGN KEY([idSp])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhapSet_sanphamSet]
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonMuaSet_KhachHangSet] FOREIGN KEY([idKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_DonMuaSet_KhachHangSet]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NPP] FOREIGN KEY([IdNPP])
REFERENCES [dbo].[NPP] ([Id])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NPP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_GioiTinh] FOREIGN KEY([phai])
REFERENCES [dbo].[GioiTinh] ([id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_GioiTinh]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanphamSet_DungLuongSet] FOREIGN KEY([idDungLuong])
REFERENCES [dbo].[DungLuong] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_sanphamSet_DungLuongSet]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanphamSet_NhanHieuSet] FOREIGN KEY([idHieu])
REFERENCES [dbo].[NhanHieu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_sanphamSet_NhanHieuSet]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanphamSet_NongDoSet] FOREIGN KEY([idNongDo])
REFERENCES [dbo].[NongDo] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_sanphamSet_NongDoSet]
GO
/****** Object:  StoredProcedure [dbo].[DeleteChiTietPhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Xóa Chi Tiết Phiếu Nhập*/
CREATE proc [dbo].[DeleteChiTietPhieuNhap]
@id int
as begin
delete dbo.CTPhieuNhap where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteDungLuong]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[DeleteDungLuong]
@id int
as begin
delete dbo.DungLuong where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteKhachHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 /*Xóa Khách Hàng*/
 CREATE proc [dbo].[DeleteKhachHang]
 @id int
 as begin
 delete dbo.KhachHang where id=@id
 end

GO
/****** Object:  StoredProcedure [dbo].[DeleteNhanHieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Xóa Nhãn Hiệu*/
CREATE proc [dbo].[DeleteNhanHieu]
@id int
as begin
delete dbo.NhanHieu where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteNhaPhanPhoi]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 /*Xóa Nhà Phân Phối*/
CREATE proc [dbo].[DeleteNhaPhanPhoi]
@id int
as begin
delete dbo.NPP where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteNongDo]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Xóa Nồng Độ*/
CREATE proc [dbo].[DeleteNongDo]
@id int
as begin
delete dbo.NongDo where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[DeletePhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 /*Xóa Phiếu Nhập*/
 CREATE proc [dbo].[DeletePhieuNhap]
 @id int
 as begin
	delete dbo.PhieuNhap where id=@id
 end

GO
/****** Object:  StoredProcedure [dbo].[Details_SP]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[Details_SP] @idSp int
 as 
 begin
	 select sp.tensp, gt.GioiTinh, sp.GiaBan, sp.HinhAnh, sp.mota, hieu.TenHieu, dl.DungTich, nd.nongdo, sale   
	from SanPham sp, NhanHieu hieu, DungLuong dl, NongDo nd, GioiTinh gt 
	 where sp.idHieu = hieu.Id and sp.idNongDo = nd.Id 
	and sp.idDungLuong = dl.Id and sp.idHieu = hieu.Id and sp.phai = gt.id 
	 and sp.id =@idSp
 end 

GO
/****** Object:  StoredProcedure [dbo].[dungluongsp]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dungluongsp]
@iddl int 
as
begin
	select DungTich from DungLuong where @iddl = id
end

GO
/****** Object:  StoredProcedure [dbo].[EditChiTietPhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Sửa Chi Tiết Phiếu Nhập*/
CREATE proc [dbo].[EditChiTietPhieuNhap]
@id int , @gianhap int , @slnhap int
as begin
	update dbo.CTPhieuNhap set giaNhap = @gianhap , SLNhap = slnhap where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[EditDungLuong]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditDungLuong]
@id int , @DungTich nvarchar(max)
as begin
	update dbo.DungLuong set DungTich = @DungTich where id =@id
end

GO
/****** Object:  StoredProcedure [dbo].[EditKhachHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditKhachHang]  
@id int, @hoten nvarchar(max), @sdt int, @diachi nvarchar(max),  @phai tinyint, @tendn nvarchar(max), @pass nvarchar(max)
as
begin
	update dbo.KhachHang set Hoten = @hoten , Sdt = @sdt , DiaChi = @diachi , phai = @phai , tenDN = @tendn , pass = @pass where Id = @id
	end

GO
/****** Object:  StoredProcedure [dbo].[EditNhanHieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Sửa Nhãn Hiệu*/
CREATE proc [dbo].[EditNhanHieu]
@id int , @tenhieu nvarchar(max)
as begin
	update dbo.NhanHieu set TenHieu = @tenhieu where id =@id
end

GO
/****** Object:  StoredProcedure [dbo].[EditNhaPhanPhoi]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   /*Sửa Nhà Phân Phối*/
CREATE proc [dbo].[EditNhaPhanPhoi]
@id int , @tennpp nvarchar(max)
as begin
	update dbo.NPP set TenNPP = @tennpp where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[EditNongDo]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  /*Sửa Nồng Độ*/
CREATE proc [dbo].[EditNongDo]
@id int , @nongdo nvarchar(max)
as begin
	update dbo.nongdo set nongdo = @nongdo where id =@id
end

GO
/****** Object:  StoredProcedure [dbo].[EditSanPham]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[EditSanPham] @idsp int , @tensp nvarchar(max), @phai tinyint, @dvt nvarchar(max), @GiaBan int,  @mota nvarchar(max), @Hieu int, @DungLuong int, @NongDo int, @hinhanh nvarchar(max) 
as 
begin
	update dbo.SanPham set tensp = @tensp,@phai=phai,dvt=@dvt,GiaBan=@GiaBan,mota=@mota,@DungLuong=idDungLuong , idNongDo=@NongDo,idHieu=@Hieu,@hinhanh=HinhAnh where @idsp=Id	
end

GO
/****** Object:  StoredProcedure [dbo].[InsertChiTietPhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Chi Tiet Phieu Nhap*/
/*THêm  Chi Tiết Phiếu Nhập*/
CREATE proc [dbo].[InsertChiTietPhieuNhap]
@idPN int , @idSP int , @gianhap int , @soluongnhap int
as begin
	declare @isvalid int = 0
	select @isvalid = id from dbo.CTPhieuNhap where idSp = @idSp
	if (@isvalid = 0)
	insert dbo.CTPhieuNhap (idPN,idSp,giaNhap,SLNhap) values (@idPN,@idSP,@gianhap,@soluongnhap)
end

GO
/****** Object:  StoredProcedure [dbo].[InsertDungLuong]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertDungLuong]
@DungTich nvarchar(max)
as 
begin
	declare @isvalid int = 0
	select @isvalid = id from dbo.DungLuong where DungTich = @DungTich
	if(@isvalid = 0)
	begin
		insert dbo.DungLuong (DungTich) values (@DungTich)
		select Max(ID) from dbo.DungLuong
	end
	else
		select @isvalid
 end

GO
/****** Object:  StoredProcedure [dbo].[InsertKhachHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertKhachHang] 
@hoten nvarchar(max), @sdt int, @diachi nvarchar(max), @phai tinyint, @tendn nvarchar(max), @pass nvarchar(max)
as begin
	insert dbo.KhachHang (Hoten,Sdt,DiaChi,phai,tenDN,pass) values (@hoten,@sdt,@diachi,@phai,@tendn,@pass)
end

GO
/****** Object:  StoredProcedure [dbo].[InsertNhanHieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Table Nhan Hieu*/
/*Thêm Nhãn Hiệu*/
CREATE proc [dbo].[InsertNhanHieu]
@tenhieu nvarchar(max)
as begin
	declare @isvalid int = 0
	select @isvalid = id from dbo.NhanHieu where TenHieu = @tenhieu
	if(@isvalid = 0)
	insert dbo.NhanHieu (TenHieu) values (@tenhieu)
 end

GO
/****** Object:  StoredProcedure [dbo].[InsertNhaPhanPhoi]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 /*Nhà Phân Phối*/
 /*Thêm Nhà Phân Phối*/
 CREATE proc [dbo].[InsertNhaPhanPhoi]
@tennpp nvarchar(max)
as begin
	declare @isvalid int = 0
	select @isvalid = id from dbo.NPP where TenNPP = @tennpp
	if(@isvalid = 0)
	insert dbo.NPP (TenNPP) values (@tennpp)
 end

GO
/****** Object:  StoredProcedure [dbo].[InsertNongDo]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*table Nong Do*/
/*Thêm Nồng Độ*/
CREATE proc [dbo].[InsertNongDo]
@NongDo nvarchar(max)
as begin
	declare @isvalid int = 0
	select @isvalid = id from dbo.NongDo where nongdo = @NongDo
	if(@isvalid = 0)
	insert dbo.NongDo (nongdo) values (@nongdo)
 end

GO
/****** Object:  StoredProcedure [dbo].[InsertPhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[InsertPhieuNhap]
@idNPP int, @tenNV nvarchar(50)
 as begin
	insert dbo.PhieuNhap (idNPP, NgayNhap,TenNV) values (@idnpp, getdate(),@tenNV)
 end
GO
/****** Object:  StoredProcedure [dbo].[InsertSanPham]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertSanPham]
@idphieunhap int = 0, @tensp nvarchar(max),@phai tinyint ,@dvt nvarchar(max), @mota nvarchar(max),@idhieu int = 0, @iddungluong int = 0, @idnongdo int = 0
,@soluongnhap int,@idnv int, @gianhap int, @hinhanh nvarchar(MAX)
as 
begin
--- Tui s? làm theo cách c?a ông
		declare @Isvalidtensanpham int = 0
		select @Isvalidtensanpham = id from dbo.SanPham where tensp = @tensp and @idhieu = idHieu and @idnongdo = idNongDo and @iddungluong = idDungLuong
		if(@Isvalidtensanpham = 0)
		begin
			Insert dbo.SanPham(tensp,phai,dvt,HinhAnh,mota,idHieu,idDungLuong,idNongDo,SLTon) values (@tensp,@phai,@dvt,@hinhanh,@mota,@idhieu, @iddungluong, @idnongdo, @soluongnhap)
		begin
				declare @idnhaphanphoi int = 0 , @idnhanvien int = 0
				begin
					declare @idsanpham int = 0
					select @idsanpham  = max(id) from dbo.SanPham
					insert dbo.CTPhieuNhap (idPN,idSp,giaNhap,SLNhap) values (@idphieunhap,@idsanpham,@gianhap,@soluongnhap)
					update dbo.CTPhieuNhap set giaban = @gianhap * 150/100 where @idphieunhap = idPN and @idsanpham = idSp
					update dbo.SanPham set GiaBan = @gianhap * 150/100 where @idsanpham = id
				end
			end
		end
		else
		begin
			update dbo.SanPham set SLTon = SLTon + @soluongnhap where id = @Isvalidtensanpham
					select @idsanpham  = max(id) from dbo.SanPham
					insert dbo.CTPhieuNhap (idPN,idSp,giaNhap,SLNhap) values (@idphieunhap,@idsanpham,@gianhap,@soluongnhap) 
					update dbo.CTPhieuNhap set giaban = @gianhap * 150/100 where @idphieunhap = idPN and @idsanpham = idSp
					update dbo.SanPham set GiaBan = @gianhap * 150/100 where  @idsanpham = id
		end

end

GO
/****** Object:  StoredProcedure [dbo].[LoadPhieuNhap]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[LoadPhieuNhap] 
as
begin
	select * from PhieuNhap
end

GO
/****** Object:  StoredProcedure [dbo].[pchitietdonmua]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pchitietdonmua]
@idphieu int
as
begin
	select a.*,sp.tensp, dl.DungTich,nd.nongdo  from  dbo.CTDonMua as a, dbo.SanPham as sp, dbo.DungLuong as dl,dbo.NongDo as nd where nd.Id = sp.idNongDo and dl.Id = sp.idDungLuong and sp.Id = a.idSp and idDH = @idphieu
end
GO
/****** Object:  StoredProcedure [dbo].[pGetPhieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pGetPhieu] @id int as 
begin
	select *,(select TenNPP from dbo.NPP where id = PhieuNhap.IdNPP) as 'NPP' from dbo.PhieuNhap where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadCTPhieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pLoadCTPhieu] @idPhieu int as
begin
	select ctp.*,tensp from dbo.CTPhieuNhap as ctp inner join dbo.SanPham as sp on ctp.idSp = sp.Id where IdPN= @idPhieu
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadDungluong]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[pLoadDungluong] as 
begin
	select * from dbo.DungLuong
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadGioiTinh]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pLoadGioiTinh] as 
begin
	select * from dbo.GioiTinh
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadHieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pLoadHieu]
@idhieu int
as begin
	select * from dbo.SanPham where @idhieu = idHieu
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadNhanHieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[pLoadNhanHieu] as 
begin
	select * from dbo.NhanHieu
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadNhanvien]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pLoadNhanvien] as 
begin
	select * from dbo.Admin
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadNongDo]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pLoadNongDo] as 
begin
	select * from dbo.NongDo
end

GO
/****** Object:  StoredProcedure [dbo].[pLoadNPP]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pLoadNPP] as 
begin
	select * from dbo.NPP
end

GO
/****** Object:  StoredProcedure [dbo].[pnhanhieu]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pnhanhieu]
as
begin
	select tenhieu from dbo.NhanHieu
end

GO
/****** Object:  StoredProcedure [dbo].[pTest]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pTest]
@status int as
begin
	if(@status = -1)
		select * from dbo.DatHang
	else
		select * from dbo.DatHang where TrangThai = @status
end

GO
/****** Object:  StoredProcedure [dbo].[pXoaDonHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pXoaDonHang] @idDonHang int as
begin
	declare @i int = 0
	select @i = Count(*) from dbo.CTDonMua where idDH = @idDonHang
	while @i > 0
	begin
		delete dbo.CTDonMua where id = (select top 1 Id from dbo.CTDonMua where idDH = @idDonHang)
		set @i = @i - 1
	end
	declare  @idKH int, @ngaymua datetime, @tongTien int, @ngayGiaoHang datetime , @tenNV nvarchar(MAX) , @diachigiaohang nvarchar(max)
	select @idKH  = idKH, @ngaymua = NgayMua , @tongTien = TongTien , @ngayGiaoHang = NgayGiaoHang , @tenNV = TenNV,
	 @diachigiaohang = DiachiGiaoHang from dbo.DatHang where id = @idDonHang
	insert dbo.DonHangDaXoa (id,idkh,ngaymua,tongtien,ngaygiaohang,diachigiaohang,TenNV) values (@idDonHang,@idKH,@ngaymua,@tongTien,@ngayGiaoHang,@diachigiaohang,@tenNV)
	delete dbo.DatHang where id = @idDonHang
end

GO
/****** Object:  Trigger [dbo].[tDeleteDatHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[tDeleteDatHang] on [dbo].[CTDonMua] for Delete
as begin
	declare @id int , @idSp int = 0, @SoLuong int , @idDH int , @giaBan int , @thanhTien int
	select @id = id , @idSp = idSp , @SoLuong = SoLuong , @idDH = idDH , @giaBan = giaBan , @thanhTien = ThanhTien from deleted
	insert dbo.CTDonMuaDaXoa (id,idDH,idSp,SoLuong,giaBan,ThanhTien) values (@id,@idDH,@idSp , @SoLuong, @giaBan , @thanhTien)
	update dbo.SanPham set SLTon = SLTon + @SoLuong where id = @idSp
end

GO
/****** Object:  Trigger [dbo].[tThemDatHang]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tThemDatHang] on [dbo].[CTDonMua] for Insert
as begin
declare @idDH int ,@id int , @idSp int = 0 , @SoLuong int , @giaBan int
select @idDH = idDH,@idSp = idSp,@SoLuong = SoLuong ,  @giaBan = giaBan from inserted
update dbo.SanPham set SLTon = SLTon - @SoLuong where id = @idSp
end
GO
/****** Object:  Trigger [dbo].[tUpdateSanPham]    Script Date: 5/24/2018 12:50:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tUpdateSanPham] on [dbo].[DatHang] after update as
begin
	declare @id int,@status int = 3
	select @id = id , @status = @status - TrangThai from dbo.DatHang
	if(@status = 0)
	begin
		declare @idTam int = 0,@soLuong int = 0 
		while (select count(*) from dbo.CTDonMua where id = @id) > 0
		begin
			select @idTam = idSp, @soLuong = SoLuong from dbo.CTDonMua where id = @id
			update dbo.SanPham set SLTon = SLTon + @soLuong where id = @idTam
		end			
	end
end

GO
