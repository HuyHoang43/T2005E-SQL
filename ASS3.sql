create table SanPham(
MasoSP char(50) not null,
TenSP varchar(255) not null check(len(TenSP)>=2),
NgaySX date not null check(NgaySX>= getdate()),
Id int not null primary key
);

create table NVPT(
TenNV varchar(255) not null,
MasoNV char(50) not null primary key
);

create table Chitiet(
SanPhamId int not null foreign key references SanPham(Id),
MasoNVPT char(50) not null foreign key references NVPT(MasoNV),
MaloaiSP char(50) not null,
);