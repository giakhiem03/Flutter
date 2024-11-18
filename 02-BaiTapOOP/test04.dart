import 'cua_hang.dart';
import 'dien_thoai.dart';
import 'hoa_don.dart';

void main() {
  var dienThoai1 = DienThoai('DT-001', 'IPhone7', 'Apple', 1000, 2000, true);
  var dienThoai2 = DienThoai('DT-002', 'IPhone8', 'Apple', 1500, 2500, true);
  var dienThoai3 = DienThoai('DT-003', 'IPhone9', 'Apple', 1300, 2100, true);
  dienThoai1.hienThiThongTin();
  dienThoai1.tenDienThoai = 'IPhoneX';
  print('-------------------Sau khi đổi tên điện thoại: ------------------');
  dienThoai1.hienThiThongTin();
  print('\n');
  dienThoai1.hienThiThongTin();
  dienThoai1.giaBan = -2000;
  print(' ------------------Sau khi đổi giá bán thành âm:  ------------------');
  dienThoai1.hienThiThongTin();

  var hoaDon1 = HoaDon('HD-001', DateTime(2024, 11, 16), dienThoai1, 1, 2400, 'Gia Khiêm', '0978687846');
  var hoaDon2 = HoaDon('HD-002', DateTime(2024, 11, 16), dienThoai2, 1, 2700, 'Khiêm Huỳnh', '0978687846');
  var hoaDon3 = HoaDon('HD-003', DateTime(2024, 11, 16), dienThoai2, 1, 2700, 'Hiếu Huỳnh', '0978687846');
  var hoaDon4 = HoaDon('HD-004', DateTime(2024, 11, 16), dienThoai3, 1, 2600, 'Hoan Huỳnh', '0978687846');
  print('\n------------------Thông tin hóa đơn: ------------------');
  hoaDon1.hienThiThongTinHoaDon();

  hoaDon1.soDienThoaiKH = '012345678';
  print('\n------------------Thông tin hóa đơn sau khi set số điện thoại Kh là 9 số: ------------------');
  hoaDon1.hienThiThongTinHoaDon();
  
  print('Tổng tiền là: ${hoaDon1.tinhTongTien()}');
  print('Tổng lợi nhuận là: ${hoaDon1.loiNhuanThucTe()}');

  var cuaHang = CuaHang('HGK', '12/4 ấp 7 TPHCM');
  cuaHang.themMoiDienThoai(dienThoai1);
  cuaHang.taoHoaDon(hoaDon1);
  cuaHang.themMoiDienThoai(dienThoai2);
  cuaHang.taoHoaDon(hoaDon2);
  print('\nDoanh thu theo thời gian: ${cuaHang.tongDoanhThuTheoKhoangThoiGian(DateTime(2024, 11, 14), DateTime(2024, 11, 20))}');
  print('\nLợi nhuận theo thời gian: ${cuaHang.tongLoiNhuanTheoKhoangThoiGian(DateTime(2024, 11, 14), DateTime(2024, 11, 20))}');

  cuaHang.topDienThoaiBanChay();
  cuaHang.thongKeTonKho();

}