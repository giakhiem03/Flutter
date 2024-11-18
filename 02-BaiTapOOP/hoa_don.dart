import 'dien_thoai.dart';
import 'top_dien_thoai.dart';

class HoaDon {
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoaiDuocBan;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKH;

  HoaDon(
      this._maHoaDon,
      this._ngayBan,
      this._dienThoaiDuocBan,
      this._soLuongMua,
      this._giaBanThucTe,
      this._tenKhachHang,
      this._soDienThoaiKH){
        TopDienThoai.themDienThoaiDuocBan(_dienThoaiDuocBan);
        // Kiểm tra số lần bán của điện thoại trước khi tạo hóa đơn
        if (_dienThoaiDuocBan.banDienThoai()) {
          print('Hóa đơn $_maHoaDon được tạo thành công.');
        } else {
          print('Không thể bán điện thoại ${_dienThoaiDuocBan.tenDienThoai}, đã được bán!');
        }
      }

  String get maHoaDon => _maHoaDon;
  set maHoaDon(String maHoaDon) {
    if (maHoaDon.isNotEmpty) {
      String tienTo = maHoaDon.split('-').toString().trim();
      if (tienTo == 'HD') {
        _maHoaDon = maHoaDon;
      }
    }
  }

  DateTime get ngayBan => _ngayBan;
  set ngayBan(DateTime ngayBan) {
    if (ngayBan.isBefore(DateTime.now())) {
      _ngayBan = ngayBan;
    }
    ;
  }

  int get soLuongMua => _soLuongMua;
  set soLuongMua(int soLuongMua) =>
      soLuongMua > 0 && soLuongMua <= _dienThoaiDuocBan.soLuongTonKho
          ? soLuongMua
          : _soLuongMua;

  DienThoai get dienThoaiDuocBan => _dienThoaiDuocBan;
  
  void hienThiThongTinDT() {
    _dienThoaiDuocBan.hienThiThongTin();
  }

  double get giaBanThucTe => _giaBanThucTe;
  set giaBanThucTe(double giaBanThucTe) =>
      _giaBanThucTe = giaBanThucTe > 0 ? giaBanThucTe : _giaBanThucTe;

  String get tenKhachHang => _tenKhachHang;
  set tenKhachHang(String tenKhachHang) =>
      _tenKhachHang = tenKhachHang.isNotEmpty ? tenKhachHang : _tenKhachHang;

  String get soDienThoaiKH => _soDienThoaiKH;
  set soDienThoaiKH(String soDienThoaiKH ) {
    if (soDienThoaiKH.isNotEmpty &&
        soDienThoaiKH.length == 10 &&
        RegExp(r'^\d+$').hasMatch(soDienThoaiKH)) {
      _soDienThoaiKH = soDienThoaiKH;
    }
  }

  double tinhTongTien() {
    return _soLuongMua * _giaBanThucTe;
  }

  double loiNhuanThucTe() {
    return _giaBanThucTe - dienThoaiDuocBan.giaNhap;
  }

  void hienThiThongTinHoaDon() {
    print('mã hóa đơn: $_maHoaDon');
    print('ngày lập hóa đơn: $ngayBan');
    print('điện thoại được bán:');
    _dienThoaiDuocBan.hienThiThongTin();
    print('số lượng mua: $_soLuongMua');
    print('giá bán thực tế: $_giaBanThucTe');
    print('tên khách hàng: $_tenKhachHang');
    print('số điện thoại khách hàng: $_soDienThoaiKH');
  }



}
