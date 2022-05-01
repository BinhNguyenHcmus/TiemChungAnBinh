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
	
-- DROP TABLE "Giamho"	
	
CREATE TABLE "Khachhang" (
    "makh" CHAR(5) NOT NULL,
    "hoten" TEXT NOT NULL,
	"diachi" TEXT NOT NULL,
	"sodienthoai" CHAR(10) NOT NULL,
	"ngaytao" DATE NOT NULL,
	"gioitinh" BOOLEAN NOT NULL,
    CONSTRAINT "User_pkey" PRIMARY KEY ("makh")
);

CREATE TABLE "Giamho" (
    "makh" CHAR(5) NOT NULL,
    "hoten" TEXT NOT NULL,
	"sodienthoai" CHAR(10) NOT NULL,
    CONSTRAINT "Obs_pkey" PRIMARY KEY ("makh")
);

CREATE TABLE "Lichlamviec" (
    "manv" CHAR(5) NOT NULL,
    "thoigian" TIMESTAMP NOT NULL,
	CONSTRAINT "Calendar_pkey" PRIMARY KEY ("manv", "thoigian")
);

CREATE TABLE "Hoadon" (
    "mahd" CHAR(5) NOT NULL,
    "hinhthuc" CHAR(10) NOT NULL,
	"ngaythanhtoan" DATE NOT NULL,
	"tongsotien" INTEGER NOT NULL,
	"sotiendatra" INTEGER NOT NULL,
	"loaithanhtoan" CHAR(10) NOT NULL,
	"phuongthucthanhtoan" CHAR(10) NOT NULL,
    CONSTRAINT "Bill_pkey" PRIMARY KEY ("mahd")
);

CREATE TABLE "Phieu" (
    "maphieu" CHAR(5) NOT NULL,
    "makh" CHAR(5) NOT NULL,
	"diadiemtiem" CHAR(5) NOT NULL,
	"thoigiantiem" TIMESTAMP NOT NULL,
	"loaiphieu" CHAR(10) NOT NULL,
    CONSTRAINT "Ticket_pkey" PRIMARY KEY ("maphieu")
);

CREATE TABLE "Trungtam" (
    "matt" CHAR(5) NOT NULL,
    "tentt" TEXT NOT NULL,
	"diadiem" TEXT NOT NULL,
	CONSTRAINT "Center_pkey" PRIMARY KEY ("matt")
);

CREATE TABLE "Nhanvien" (
    "manv" CHAR(5) NOT NULL,
	"matt" CHAR(5) NOT NULL,
    "hoten" TEXT NOT NULL, 
	"sodienthoai" CHAR(10) NOT NULL,
    CONSTRAINT "Staff_pkey" PRIMARY KEY ("manv")
);

CREATE TABLE "Chitietphieu" (
    "maphieu" CHAR(5) NOT NULL,
    "magoi" CHAR(5) NOT NULL,
	"soluong" INTEGER NOT NULL,
	"kieumua" CHAR(10) NOT NULL,
    CONSTRAINT "Detail_pkey" PRIMARY KEY ("maphieu", "magoi")
);

CREATE TABLE "Goivacxin" (
    "magoi" CHAR(5) NOT NULL,
    "tengoi" TEXT NOT NULL, 
	"thanhtien" INTEGER NOT NULL,
	"loaigoi" CHAR(10) NOT NULL,
    CONSTRAINT "Package_pkey" PRIMARY KEY ("magoi")
);

CREATE TABLE "Chitietgoi" (
    "magoi" CHAR(5) NOT NULL,
    "mavacxin" CHAR(5) NOT NULL,
	"loaigoi" CHAR(10) NOT NULL,
    CONSTRAINT "PackageDetail_pkey" PRIMARY KEY ("magoi", "mavacxin")
);

CREATE TABLE "Nhacungcap" (
    "mancc" CHAR(5) NOT NULL,
    "tenncc" TEXT NOT NULL, 
	"diachi" TEXT NOT NULL,
	"sodienthoai" CHAR(10) NOT NULL,
    CONSTRAINT "Supplier_pkey" PRIMARY KEY ("mancc")
);

CREATE TABLE "Quanly" (
    "maql" CHAR(5) NOT NULL,
    "hoten" TEXT NOT NULL, 
	"sodienthoai" CHAR(10) NOT NULL,
    CONSTRAINT "Manager_pkey" PRIMARY KEY ("maql")
);

CREATE TABLE "Phieunhaphang" (
    "maphieu" CHAR(5) NOT NULL,
    "mavacxin" CHAR(5) NOT NULL,
	"mancc" CHAR(5) NOT NULL,
	"maql" CHAR(5) NOT NULL,
	"soluong" INTEGER NOT NULL,
    CONSTRAINT "Import_pkey" PRIMARY KEY ("maphieu")
);

CREATE TABLE "Vacxin" (
    "mavacxin" CHAR(5) NOT NULL,
	"mancc" CHAR(5) NOT NULL,
	"tenvacxin" TEXT NOT NULL,
	"luongton" INTEGER NOT NULL,
    CONSTRAINT "Vacxin_pkey" PRIMARY KEY ("mavacxin")
);

-- CONSTRAINS
ALTER TABLE "Giamho" ADD CONSTRAINT "Giamho_makh_fkey" FOREIGN KEY ("makh") REFERENCES "Khachhang"("makh") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Phieu" ADD CONSTRAINT "Phieu_makh_fkey" FOREIGN KEY ("makh") REFERENCES "Khachhang"("makh") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Phieu" ADD CONSTRAINT "Phieu_diadiemtiem_fkey" FOREIGN KEY ("diadiemtiem") REFERENCES "Trungtam"("matt") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Lichlamviec" ADD CONSTRAINT "Lichlamviec_manv_fkey" FOREIGN KEY ("manv") REFERENCES "Nhanvien"("manv") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Phieunhaphang" ADD CONSTRAINT "Phieunhaphang_maql_fkey" FOREIGN KEY ("maql") REFERENCES "Quanly"("maql") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Phieunhaphang" ADD CONSTRAINT "Phieunhaphang_mavacxin_fkey" FOREIGN KEY ("mavacxin") REFERENCES "Vacxin"("mavacxin") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Phieunhaphang" ADD CONSTRAINT "Phieunhaphang_mancc_fkey" FOREIGN KEY ("mancc") REFERENCES "Nhacungcap"("mancc") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Chitietgoi" ADD CONSTRAINT "Chitietgoi_mavacxin_fkey" FOREIGN KEY ("mavacxin") REFERENCES "Vacxin"("mavacxin") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Chitietgoi" ADD CONSTRAINT "Chitietgoi_magoi_fkey" FOREIGN KEY ("magoi") REFERENCES "Goivacxin"("magoi") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Chitietphieu" ADD CONSTRAINT "Chitietphieu_magoi_fkey" FOREIGN KEY ("magoi") REFERENCES "Goivacxin"("magoi") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Chitietphieu" ADD CONSTRAINT "Chitietphieu_maphieu_fkey" FOREIGN KEY ("maphieu") REFERENCES "Phieu"("maphieu") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "Nhanvien" ADD CONSTRAINT "Nhanvien_matt_fkey" FOREIGN KEY ("matt") REFERENCES "Trungtam"("matt") ON DELETE SET NULL ON UPDATE CASCADE;


