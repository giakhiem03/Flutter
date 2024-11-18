import 'dien_thoai.dart';
import 'dien_thoai_ton_kho.dart';

class TopDienThoai {

  static List<DienThoai> _danhSachDienThoaiDuocBan = [];

  static void themDienThoaiDuocBan(DienThoai dienThoai) {
    _danhSachDienThoaiDuocBan.add(dienThoai);
    DienThoaiTonKho.xoaDienThoaiTonKho(dienThoai);
  }

  static void tinhTopDienThoai() {
    // Tạo một Map để đếm số lần xuất hiện của mỗi phần tử
    Map<String, int> dienThoais = {};
    for (var number in _danhSachDienThoaiDuocBan) {
      dienThoais[number.maDienThoai] = (dienThoais[number.maDienThoai] ?? 0) + 1;
    }

    // Chuyển Map thành List các phần tử và sắp xếp giảm dần theo giá trị
    var top3 = dienThoais.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value))
    ..take(3); // Sắp xếp theo giá trị giảm dần

    // In kết quả
    print("Top 3 điện thoại bán chạy nhất:");
    for (var dt in top3) {
      print("${dt.key}: ${dt.value} ");
    }
  }
}