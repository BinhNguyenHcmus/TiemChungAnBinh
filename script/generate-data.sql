-- Database: anbinh

-- DROP DATABASE IF EXISTS anbinh;

CREATE DATABASE anbinh
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

select * from "Khachhang";
select * from "Giamho";
select * from "Trungtam";
select * from "Nhanvien";


-- Khach hang
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai) 
VALUES ('KH001', 'Đoàn Nhật Minh', '2022-08-24', 'TPHCM', 'Nam', '2001-08-24', '7545234762');
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai)	
VALUES ('KH002', 'Phan Minh Hiếu', '2022-08-24', 'TPHCM', 'Nam', '2001-08-24', '7545234766');
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai) 
VALUES ('KH003', 'Nguyễn Huy Anh Thư', '2022-08-24', 'TPHCM', 'Nam', '1997-08-24', '7545234764');
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai) 
VALUES ('KH004', 'Nguyễn Quang Trường', '2022-08-24', 'TPHCM', 'Nam', '2001-08-24', '754523472');
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai) 
VALUES ('KH005', 'Trương Minh Nhựt', '2022-08-24', 'TPHCM', 'Nu', '2001-08-24', '7545234638');
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai) 
VALUES ('KH006', 'Đinh Hoa Lư', '2022-08-24', 'TPHCM', 'Nu', '2001-08-24', '754523470');
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai) 
VALUES ('KH007', 'Trần Hữu Trọng', '2022-08-24', 'TPHCM', 'Nam', '2001-08-24', '7545234766');
INSERT INTO "Khachhang" (makh, hoten, ngaytao, diachi, gioitinh, ngaysinh, sodienthoai) 
VALUES ('KH008', 'Võ Lâm Hải Quốc', '2022-08-24', 'TPHCM', 'Nu', '1997-08-24', '754523764');
-- Giamho
INSERT INTO "Giamho" (makh, hoten, sodienthoai) VALUES ('KH001', 'Nguyễn Hà Thành', '3464578675');
INSERT INTO "Giamho" (makh, hoten, sodienthoai) VALUES ('KH004', 'Nguyễn Ngọc Phú Sỹ', '3464578675');
INSERT INTO "Giamho" (makh, hoten, sodienthoai) VALUES ('KH003', 'Nguyễn Huỳnh Thế Bảo', '3464578675');
INSERT INTO "Giamho" (makh, hoten, sodienthoai) VALUES ('KH007', 'Vương Hoàng Bảo', '3464578675');
INSERT INTO "Giamho" (makh, hoten, sodienthoai) VALUES ('KH008', 'Hoàng Lê Khanh', '3464578675');
INSERT INTO "Giamho" (makh, hoten, sodienthoai) VALUES ('KH002', 'Phan Khải Đông', '3464578675');
INSERT INTO "Giamho" (makh, hoten, sodienthoai) VALUES ('KH005', 'Lê Xuân Dĩnh', '3464578675');
-- Trungtam
INSERT INTO "Trungtam" (matt, tentt, diadiem) VALUES ('TT001', 'Trung tâm An', 'TPHCM');
INSERT INTO "Trungtam" (matt, tentt, diadiem) VALUES ('TT002', 'Trung tâm Bình', 'TPHCM');
INSERT INTO "Trungtam" (matt, tentt, diadiem) VALUES ('TT003', 'Trung tâm An Bình', 'TPHCM');
-- Phieu
INSERT INTO "Phieu" (maphieu, makh, diadiemtiem, thoigiantiem, loaiphieu) VALUES ('PH001', 'KH002', 'TT003', '2022-06-01 00:00', 'Đăng ký');
INSERT INTO "Phieu" (maphieu, makh, diadiemtiem, thoigiantiem, loaiphieu) VALUES ('PH002', 'KH001', 'TT001', '2022-06-01 00:00', 'Đặt mua');
INSERT INTO "Phieu" (maphieu, makh, diadiemtiem, thoigiantiem, loaiphieu) VALUES ('PH003', 'KH006', 'TT003', '2022-06-01 00:00', 'Đăng ký');
INSERT INTO "Phieu" (maphieu, makh, diadiemtiem, thoigiantiem, loaiphieu) VALUES ('PH004', 'KH004', 'TT003', '2022-06-01 00:00', 'Đặt mua');
INSERT INTO "Phieu" (maphieu, makh, diadiemtiem, thoigiantiem, loaiphieu) VALUES ('PH005', 'KH005', 'TT002', '2021-06-01 00:00', 'Đăng ký');
-- Hoadon
INSERT INTO "Hoadon" (mahd, maphieu, hinhthuc, ngaythanhtoan, tongsotien, sotiendatra, loaithanhtoan, phuongthuc) 
VALUES ('HD001', 'PH001', 'COD', '2022-08-24', 200000, 200000, 'CASH', 'TRAGOP');
INSERT INTO "Hoadon" (mahd, maphieu, hinhthuc, ngaythanhtoan, tongsotien, sotiendatra, loaithanhtoan, phuongthuc) 
VALUES ('HD002', 'PH002', 'COD', '2022-08-24', 400000, 400000, 'CASH', 'MOTLAN');
INSERT INTO "Hoadon" (mahd, maphieu, hinhthuc, ngaythanhtoan, tongsotien, sotiendatra, loaithanhtoan, phuongthuc) 
VALUES ('HD003', 'PH003', 'COD', '2022-08-24', 200000, 200000, 'CASH', 'MOTLAN');
INSERT INTO "Hoadon" (mahd, maphieu, hinhthuc, ngaythanhtoan, tongsotien, sotiendatra, loaithanhtoan, phuongthuc) 
VALUES ('HD004', 'PH004', 'COD', '2022-08-24', 600000, 500000, 'CASH', 'TRAGOP');
INSERT INTO "Hoadon" (mahd, maphieu, hinhthuc, ngaythanhtoan, tongsotien, sotiendatra, loaithanhtoan, phuongthuc) 
VALUES ('HD005', 'PH005', 'COD', '2022-08-24', 700000, 700000, 'CASH', 'MOTLAN');
-- Nhanvien
INSERT INTO "Nhanvien" (manv, matt, hoten, sodienthoai) VALUES ('NV001', 'TT001', 'Vũ Thái Dương', '3464578675');
INSERT INTO "Nhanvien" (manv, matt, hoten, sodienthoai) VALUES ('NV002', 'TT001', 'Lê Duy Dũng', '3464578675');
INSERT INTO "Nhanvien" (manv, matt, hoten, sodienthoai) VALUES ('NV003', 'TT002', 'Nguyễn Thành Trung', '3464578675');
INSERT INTO "Nhanvien" (manv, matt, hoten, sodienthoai) VALUES ('NV004', 'TT002', 'Lê Trần Gia Bảo', '3464578675');
INSERT INTO "Nhanvien" (manv, matt, hoten, sodienthoai) VALUES ('NV005', 'TT003', 'Phan Thiên Quân', '3464578675');
INSERT INTO "Nhanvien" (manv, matt, hoten, sodienthoai) VALUES ('NV006', 'TT003', 'Nguyễn Thị Ngọc Diệu', '3464578675');
INSERT INTO "Nhanvien" (manv, matt, hoten, sodienthoai) VALUES ('NV007', 'TT003', 'Ngô Trung Nghĩa', '3464578675');
-- Lichlamviec
INSERT INTO "Lichlamviec" (manv, thoigian) VALUES ('NV001', '2022-01-01 01:00');
INSERT INTO "Lichlamviec" (manv, thoigian) VALUES ('NV002', '2022-01-01 02:00');
INSERT INTO "Lichlamviec" (manv, thoigian) VALUES ('NV003', '2022-01-01 03:00');
INSERT INTO "Lichlamviec" (manv, thoigian) VALUES ('NV004', '2022-01-01 04:00');
INSERT INTO "Lichlamviec" (manv, thoigian) VALUES ('NV005', '2022-01-01 05:00');
INSERT INTO "Lichlamviec" (manv, thoigian) VALUES ('NV006', '2022-01-01 04:00');
INSERT INTO "Lichlamviec" (manv, thoigian) VALUES ('NV007', '2022-01-01 05:00');
-- Quanly
INSERT INTO "Quanly" (maql, hoten, sodienthoai) VALUES ('QL001', 'Trần Hải Đăng', '7545234766');
INSERT INTO "Quanly" (maql, hoten, sodienthoai) VALUES ('QL002', 'Phùng Anh Khoa', '7545234766');
INSERT INTO "Quanly" (maql, hoten, sodienthoai) VALUES ('QL003', 'Phạm Anh Tuấn', '7545234766');
INSERT INTO "Quanly" (maql, hoten, sodienthoai) VALUES ('QL004', 'Bùi Nguyễn Minh Châu', '7545234766');
INSERT INTO "Quanly" (maql, hoten, sodienthoai) VALUES ('QL005', 'Trần Văn Qúy Phước', '7545234766');
-- Nhacungcap
INSERT INTO "Nhacungcap" (mancc, tenncc, diachi, sodienthoai) VALUES ('N5501','Chi nhánh Công ty cổ phần Dược phẩm Eco','148 Hoàng Hoa Thám,Phường 12, Quận Tân Bình, Thành phố Hồ Chí Minh','0988131265');
INSERT INTO "Nhacungcap" (mancc, tenncc, diachi, sodienthoai) VALUES ('N5502','Chi nhánh Công ty Cổ phần Dược phẩm Nam Hà','Số 96, phố Thái Hà,phường Trung Liệt,Quận Đống Đa, TP.Hà Nội','0988131769');
INSERT INTO "Nhacungcap" (mancc, tenncc, diachi, sodienthoai) VALUES ('N5503','Chi nhánh công ty Cổ phần Dược phẩm Thiết bị y tế Hà Nội','27B Nguyễn Đình Chiểu, phường Đa Kao, quận 1, thành phố Hồ Chí Minh','0388169271');
INSERT INTO "Nhacungcap" (mancc, tenncc, diachi, sodienthoai) VALUES ('N5504','Chi nhánh Công ty TNHH Zuellig Pharma Việt Nam','Lô 5- Đường số 2- khu công nghiệp Tân Tạo,Quận Bình Tân - tp.Hồ Chí Minh','0919235761');
INSERT INTO "Nhacungcap" (mancc, tenncc, diachi, sodienthoai) VALUES ('N5505','Công ty Cổ phần Dược - Thiết bị Y tế Đà Nẵng','02 Phan Đình Phùng,phường Hải Châu,thành phố Đà Nẵng','0311234812');
-- Vacxin
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5316','N5501','Pfizer–BioNTech','600000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5317','N5501','Oxford–AstraZeneca','1000000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5318','N5502','Sinopharm BIBP','950000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5319','N5502','Moderna','50000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5320','N5503','PJanssen','720000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5321','N5503','CoronaVac','650000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5322','N5504','Covaxin','1000000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5323','N5504','Novavax','300000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5324','N5505','Sputnik V','500000');
INSERT INTO "Vacxin" (mavacxin, mancc, tenvacxin, luongton) VALUES ('V5325','N5505','Sanofi–GSK ','800000');
-- Goivacxin
INSERT INTO "Goivacxin" (magoi, tengoi, thanhtien, loaigoi) VALUES ('GOI01', 'TREEM', 300000, 'package');
INSERT INTO "Goivacxin" (magoi, tengoi, thanhtien, loaigoi) VALUES ('GOI02', 'NGUOILON', 700000, 'package');
INSERT INTO "Goivacxin" (magoi, tengoi, thanhtien, loaigoi) VALUES ('GOI03', 'MANGTHAI', 900000, 'package');
INSERT INTO "Goivacxin" (magoi, tengoi, thanhtien, loaigoi) VALUES ('GOI04', 'COVID', 500000, 'single');
-- Phieunhaphang
INSERT INTO "Phieunhaphang" (maphieu, mavacxin, mancc, soluong, maql) VALUES ('PH004', 'V5316', 'N5502', 10000, 'QL003');
INSERT INTO "Phieunhaphang" (maphieu, mavacxin, mancc, soluong, maql) VALUES ('PH002', 'V5321', 'N5504', 10000, 'QL002');
INSERT INTO "Phieunhaphang" (maphieu, mavacxin, mancc, soluong, maql) VALUES ('PH002', 'V5322', 'N5502', 10000, 'QL001');
INSERT INTO "Phieunhaphang" (maphieu, mavacxin, mancc, soluong, maql) VALUES ('PH004', 'V5318', 'N5503', 10000, 'QL005');
INSERT INTO "Phieunhaphang" (maphieu, mavacxin, mancc, soluong, maql) VALUES ('PH002', 'V5324', 'N5504', 10000, 'QL004');
-- Chitietgoi
INSERT INTO "Chitietgoi" (magoi, mavacxin) VALUES ('GOI01', 'V5323');
INSERT INTO "Chitietgoi" (magoi, mavacxin) VALUES ('GOI01', 'V5322');
INSERT INTO "Chitietgoi" (magoi, mavacxin) VALUES ('GOI02', 'V5324');
INSERT INTO "Chitietgoi" (magoi, mavacxin) VALUES ('GOI03', 'V5318');
INSERT INTO "Chitietgoi" (magoi, mavacxin) VALUES ('GOI03', 'V5320');
INSERT INTO "Chitietgoi" (magoi, mavacxin) VALUES ('GOI04', 'V5321');
-- Chitietphieu
INSERT INTO "Chitietphieu" (maphieu, magoi, soluong, kieumua) VALUES ('PH001', 'GOI01', 10, 'Đặt mua');
INSERT INTO "Chitietphieu" (maphieu, magoi, soluong, kieumua) VALUES ('PH002', 'GOI03', 10, 'Đăng ký');
INSERT INTO "Chitietphieu" (maphieu, magoi, soluong, kieumua) VALUES ('PH003', 'GOI02', 10, 'Đặt mua');
INSERT INTO "Chitietphieu" (maphieu, magoi, soluong, kieumua) VALUES ('PH004', 'GOI04', 10, 'Đăng ký');
INSERT INTO "Chitietphieu" (maphieu, magoi, soluong, kieumua) VALUES ('PH005', 'GOI02', 10, 'Đặt mua');
