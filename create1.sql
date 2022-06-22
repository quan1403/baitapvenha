create database quanlydiemsinhvien;
use quanlydiemsinhvien;
create table khoa(
maKhoa int primary key,
tenKhoa varchar(50));

create table lop(
maLop int primary key,
tenLop varchar(50),
maKhoa int,
foreign key (maKhoa) references khoa(maKhoa));

create table sinhvien(
maSV int auto_increment primary key,
hoten varchar(50) not null,
ngaysinh date,
hocbong varchar(50),
gioitinh varchar(50),
maLop int,
foreign key (maLop) references lop(maLop));

create table monHoc(
maMonHoc int primary key,
tenMonhoc varchar(50),
soTiet int not null);

create table ketQua(
diem int,
maMonHoc int,
maSV int,
primary key (maMonHoc , maSV),
foreign key (maMonHoc) references monHoc(maMonHoc),
foreign key (maSV) references sinhvien(maSV));
