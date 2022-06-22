use quanlydiemsinhvien;
insert into khoa values (1,'k20'),(2,'k21');
insert into lop values (1,'C0322g1',1),(2,'C0422h1',2);
insert into sinhvien values(1,'Trần Đình Quân','1998-3-14','100000','nam',1),(2,'Trần Minh Dương','1999-1-1','100000','nam',2),
(3,'Nguyễn Tùng Dương','2002-12-25','50000','nam',1);
UPDATE `quanlydiemsinhvien`.`sinhvien` SET `hoten` = 'Nguyễn Ngọc Linh', `ngaysinh` = '1998-05-14', `gioitinh` = 'nữ', `maLop` = '2' WHERE (`maSV` = '4');
insert into monHoc values(1,'Toán',10),(2,'Văn',8);
insert into ketqua values(10,1,1),(9,2,1),(10,1,2),(8,2,2),(8,1,3),(8,2,3);
UPDATE `quanlydiemsinhvien`.`khoa` SET `tenKhoa` = 'CNTT' WHERE (`maKhoa` = '1');
UPDATE `quanlydiemsinhvien`.`khoa` SET `tenKhoa` = 'KT' WHERE (`maKhoa` = '2');

