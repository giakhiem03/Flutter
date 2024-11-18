import 'nhan_vien.dart';

class NhanVienBanHang extends NhanVien {
  double _doanhSo;
  double _hoaHong;

  NhanVienBanHang(String maSinhVien, String hoTen,double luongCoBan, this._doanhSo, this._hoaHong) : super(maSinhVien, hoTen, luongCoBan);

  double get doanhSo => _doanhSo;
  set doanhSo(double doanhSo) => _doanhSo = doanhSo >= 0 ? doanhSo : _doanhSo;

  double get hoaHong => _hoaHong;
  set hoaHong(double hoaHong) {
    _hoaHong = hoaHong >= 0 && hoaHong <= 1 ? hoaHong : _hoaHong;
  }

  @override
  double tinhLuong(){
    return luongCoBan + (_doanhSo*_hoaHong);
  }

  @override
  void hienThiThongTin(){
    super.hienThiThongTin();
    print('Doanh số: $_doanhSo');
    print('Tỷ lệ hoa hồng: ${_hoaHong*100}%');
  }


}