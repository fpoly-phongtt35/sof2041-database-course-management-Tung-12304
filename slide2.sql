create database slide2
go
use slide2
go
create table nhanvien(
manv varchar(10) not null primary key,
matkhau varchar(10),
hoten nvarchar(20),
vaitro nvarchar(40),
);
create table khoahoc(
makh varchar(10) not null primary key,
macd varchar(10)  foreign key references chuyende(macd),
hocphi varchar(20),
thoiluong varchar(10),
ngaykg varchar(10),
ghichu nvarchar(30),
manv varchar(10) foreign key references nhanvien(manv),
ngaytao date,
);
create table chuyende(
macd varchar(10) primary key,
tencd nvarchar(20),
hocphi varchar(10),
thoiluong varchar(20),
hinh varchar(20),
mota varchar(10),
);
create table nguoihoc(
manh varchar(10) not null primary key,
matkhau varchar(20),
hoten nvarchar(40),
gioitinh varchar(10),
ngaysinh date,
email varchar(30),
dienthoai varchar(10),
ghichu nvarchar(50),
manv varchar(10) foreign key references nhanvien(manv),
ngaydk date,
);
create table hocvien(
mahv varchar(20) not null primary key,
makh varchar(10) foreign key references khoahoc(makh),
manh varchar(10) foreign key references nguoihoc(manh),
diem varchar(20),
);


