
Create table [KHACH_HANG] (
	[ID] Char(15) NOT NULL,
	[ID_TK] Integer NOT NULL,
	[TenKH] Varchar(20) NOT NULL,
	[DiaChi] Varchar(10) NOT NULL,
	[SDT] Integer NOT NULL,
	[Email] Char(10) NOT NULL,
	[So_lan_mua] Integer NOT NULL,
Primary Key  ([ID])
) 
go

Create table [Don_hang] (
	[ID] Char(15) NOT NULL,
	[ID_SP] Integer NOT NULL,
	[ID_DH] Integer NOT NULL,
	[Ten_DH] Varchar(20) NOT NULL,
	[Ngay_dat_hang] Datetime NOT NULL,
	[Ngay_nhan_du_kien] Datetime NOT NULL,
Primary Key  ([ID],[ID_SP],[ID_DH])
) 
go

Create table [SAN_PHAM] (
	[ID_SP] Integer NOT NULL,
	[ID_DM] Integer NOT NULL,
	[Ten_SP] Varchar(20) NOT NULL,
	[Mau_sac] Char(15) NOT NULL,
	[Hinh_anh] Image NOT NULL,
	[Mo_ta] Varchar(200) NOT NULL,
	[Gia_ban] Decimal(15,0) NOT NULL,
	[Chung_loai] Char(20) NOT NULL,
	[Tinh_trang] Char(10) NOT NULL,
	[Gia_nhap] Decimal(15,0) NOT NULL,
	[Gia_khuyen_mai] Decimal(5,0) NULL,
Primary Key  ([ID_SP])
) 
go


Create table [SP_KM] (
	[ID_KM] Integer NOT NULL,
	[ID_SP] Integer NOT NULL,
	[Ma_KM] Char(15) NULL,
Primary Key  ([ID_KM],[ID_SP])
) 
go



Create table [HANG_HOA] (
	[ID_CC] Integer NOT NULL,
	[ID_SP] Integer NOT NULL,
	[Date_of_import] Datetime NOT NULL,
	[Date_of_export] Datetime NOT NULL,
Primary Key  ([ID_CC],[ID_SP])
) 
go

Create table [DM_SP] (
	[ID_DM] Integer NOT NULL,
	[ID_DMC] Varchar(30) NOT NULL,
	[Ten_DMC] Varchar(30) NOT NULL,
	[Hinh_anh] Image NOT NULL,
	[Mo_ta] Text NULL,
Primary Key  ([ID_DM])
) 
go





Create table [NHA_CC] (
	[ID_CC] Integer NOT NULL,
	[Ten_CC] Varchar(20) NOT NULL,
	[DiaChi_CC] Varchar(30) NOT NULL,
	[SDT_CC] Integer NOT NULL,
Primary Key  ([ID_CC])
) 
go

Create table [TIN_TUC] (
	[ID_TT] Integer NOT NULL,
	[MA_DM] Integer NOT NULL,
	[Chu_de] Text NOT NULL,
	[Link] Ntext NOT NULL,
	[Author] Nchar(20) NOT NULL,
Primary Key  ([ID_TT])
) 
go


Create table [DM_TT] (
	[MA_DM] Integer NOT NULL,
	[Ten_DM] Char(15) NOT NULL,
Primary Key  ([MA_DM])
) 
go

Create table [TK_KH] (
	[ID_TK] Integer NOT NULL,
	[Ten_TK] Varchar(15) NOT NULL,
	[History] Text NOT NULL,
	[Tinh_trang] Char(10) NOT NULL,
	[Password] Char(30) NOT NULL,
Primary Key  ([ID_TK])
) 
go


Create table [Staff] (
	[ID_SF] Integer NOT NULL,
	[Ten_SF] Varchar(15) NOT NULL,
	[SDT_SF] Integer NOT NULL,
	[No_SF] Integer NOT NULL,
Primary Key  ([ID_SF])
) 
go

Alter table [Don_hang] add  foreign key([ID]) references [KHACH_HANG] ([ID]) 
go


Alter table [Don_hang] add  foreign key([ID_SP]) references [SAN_PHAM] ([ID_SP]) 
go

Alter table [HANG_HOA] add  foreign key([ID_SP]) references [SAN_PHAM] ([ID_SP]) 
go


Alter table [SAN_PHAM] add  foreign key([ID_DM]) references [DM_SP] ([ID_DM]) 
go


Alter table [SP_KM] add  foreign key([ID_SP]) references [SAN_PHAM] ([ID_SP]) 
go


Alter table [DM_SP] add  foreign key([ID_DM],) references [DM_SP] ([ID_DM],) 
go

Alter table [HANG_HOA] add  foreign key([ID_CC]) references [NHA_CC] ([ID_CC]) 
go
Alter table [TIN_TUC] add  foreign key([MA_DM]) references [DM_TT] ([MA_DM]) 
go
Alter table [KHACH_HANG] add  foreign key([ID_TK]) references [TK_KH] ([ID_TK]) 
go



