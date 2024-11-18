import './sinh_vien.dart';


class LopHoc {
  String _tenLop;
  List<SinhVien> _danhSachSV = [];
  LopHoc(this._tenLop);


  // Getter
  String get tenLop => _tenLop;

  List<SinhVien> get danhSachSV => _danhSachSV;

  // Setter
  
  set tenLop(String tenLop) {
    _tenLop = tenLop ?? _tenLop;
  }

  void themSinhVien(SinhVien sv) {
    _danhSachSV.add(sv);
  }

  void hienThiDSSV() {
    print('\nDanh sách sinh viên lớp ${_tenLop}');
    for(var sv in _danhSachSV) {
      sv.hienThiThongTin();
      print('Xếp loại: ${sv.xepLoai()}');
      print('\n');
    }
  }



}