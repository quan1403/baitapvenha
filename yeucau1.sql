use quanlydiemsinhvien;
select * from sinhvien;
select * from sinhvien where hoten like 'Trần%';
select * from sinhvien where gioitinh = 'nữ' and hocbong <>0;
select * from sinhvien where gioitinh = 'nữ'or hocbong <>0;
select * from sinhvien where ngaysinh between 1978 and 1985;
SELECT * FROM sinhvien
ORDER BY maSV ASC;
select * from sinhvien join lop on sinhvien.maLop = lop.maLop join khoa on lop.maKhoa = khoa.maKhoa
where hocbong <> 0 and tenKhoa = 'CNTT';
select * from sinhvien join lop on sinhvien.maLop = lop.maLop join khoa on lop.maKhoa = khoa.maKhoa
where hocbong <> 0 and tenKhoa = 'KT';
select k.tenKhoa , count(s.maSV) as 'số lượng sv'
from sinhvien s join lop l join khoa k on s.maSV = l.maLop and l.maKhoa = k.maKhoa
group by k.maKhoa;
select k.tenKhoa , count(s.maSV) as 'số lượng sv'
from sinhvien s join lop l join khoa k on s.maSV = l.maLop and l.maKhoa = k.maKhoa
where gioitinh = 'nữ'
group by k.maKhoa;
select l.tenLop, sum(s.hocbong) as 'Tong tien hoc'
from sinhvien  s join Lop  l on s.maLop=l.maLop
group by l.tenLop;

select k.tenKhoa , sum(s.hocbong) as 'Tong tien hoc'
from sinhvien s join Lop  l join Khoa as k  on s.maLop= l.maLop  and l.maKhoa= k.maKhoa
group by k.MaKhoa;
select k.maKhoa, k.tenKhoa , count(s.maSV) as 'Số lượng'
from sinhvien s join Lop l join Khoa  k  on s.maLop= l.maLop  and l.maKhoa= k.maKhoa
group by k.maKhoa having count(s.maSV)>100;

select k.maKhoa, k.tenKhoa , count(s.maSV) as 'Số lượng sv nữ'
from sinhvien s join Lop l join Khoa  k  on s.maLop= l.maLop  and l.maKhoa= k.maKhoa
where gioitinh = 'nữ'
group by k.maKhoa having count(s.maSV)>50;

select * 
from sinhvien
where hocbong =(select max(s.hocbong) from sinhvien s);

select * 
from sinhvien  s join ketqua kq join monhoc m on s.maSV=kq.maSV and kq.maMonHoc=m.maMonHoc
where kq.diem=(select max(kq.diem) 
from sinhvien s join ketqua  kq join monhoc m on s.maSV=kq.maMonHoc and kq.maMonHoc=m.maMonHoc
where m.tenMonhoc='Toán') and m.tenMonHoc='Toán';





