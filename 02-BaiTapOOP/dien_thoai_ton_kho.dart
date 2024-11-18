import 'dien_thoai.dart';
class DienThoaiTonKho {
  static List<DienThoai> _danhSachDienThoaiTonKho = [];

  static void themDienThoaiTonKhoa(DienThoai dienThoai) {
    _danhSachDienThoaiTonKho.add(dienThoai);
  }

  static void xoaDienThoaiTonKho(DienThoai dienThoai) {
  _danhSachDienThoaiTonKho.remove(dienThoai);
  }

  static void thongKeTonKho() {

    if(_danhSachDienThoaiTonKho.isNotEmpty){
      // Tạo một Map để đếm số lần xuất hiện của mỗi phần tử
      Map<String, int> dienThoais = {};
      for (var number in _danhSachDienThoaiTonKho) {
        dienThoais[number.maDienThoai] = (dienThoais[number.maDienThoai] ?? 0) + 1;
      }

      // Chuyển Map thành List các phần tử và sắp xếp giảm dần theo giá trị
      var dienThoaiTonKho = dienThoais.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

      // In kết quả
      print("Điện thoại tồn kho:");
      for (var dt in dienThoaiTonKho) {
        print("${dt.key}: ${dt.value} ");
      }
    } else {
      print('Không có điện thoại tồn kho!');
    }
    
  }

  static int tinhSoLuongTonKho(String maDienThoai) {
    int counts = 0;
    for (var dt in _danhSachDienThoaiTonKho) {
      counts += (maDienThoai == maDienThoai ? 1 : 0);
    }
    return counts;
  }

}