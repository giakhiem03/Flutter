class NhanVien {
  String _maNhanVien;
  String _hoTen;
  double _luongCoBan;

  NhanVien(this._maNhanVien, this._hoTen, this._luongCoBan);

  String get maNhanVien => _maNhanVien;
  void set maNhanVien(String maNhanVien) {
    _maNhanVien = maNhanVien.isNotEmpty ? maNhanVien : _maNhanVien;
  }

  String get hoTen => _hoTen;
  void set hoTen(String hoTen) {
    _hoTen = hoTen.isNotEmpty ? hoTen : _hoTen;
  }

  double get luongCoBan => _luongCoBan;
  set luongCoBan(double luongCoBan) {
    _luongCoBan = luongCoBan > 0 ? luongCoBan : _luongCoBan;
  }

  double tinhLuong() {
    return _luongCoBan;
  }

  void hienThiThongTin() {
    print('mã nhân viên ${_maNhanVien}');
    print('tên nhân viên: ${_hoTen}');
    print('lương cơ bản: ${_luongCoBan}');
    print('tổng lương: ${tinhLuong()}');
  }

}