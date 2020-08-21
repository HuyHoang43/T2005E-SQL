create table KhachHang(
TenKh varchar(255) not null,
SoCMND char(50) not null primary key,
DiaChi text not null
);

create table ThueBao(
SoTB char(50) not null,
LoaiTb text not null,
NgayDK date not null check(NgayDK>=getdate()),
Id int not null primary key,
);

create table STB(
TbID int not null foreign key references ThueBao(Id),
SoCMNDKH char (50) foreign key references KhachHang(SoCMND), 
);