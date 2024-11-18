import 'dien_thoai_ton_kho.dart';

class DienThoai {
  String _maDienThoai;
  String _tenDienThoai;
  String _hangDienThoai;
  double _giaNhap;
  double _giaBan;
  bool _trangThai;
  late int _soLuongTonKho;

  // Biến tĩnh theo dõi số lần bán của mỗi điện thoại
  static Map<String, int> soLanBan = {};

  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangDienThoai, this._giaNhap, this._giaBan, this._trangThai) {
    DienThoaiTonKho.themDienThoaiTonKhoa(this);
    _soLuongTonKho = DienThoaiTonKho.tinhSoLuongTonKho(_maDienThoai);
    
    // Khởi tạo số lần bán cho mỗi điện thoại nếu chưa có
    if (!soLanBan.containsKey(_maDienThoai)) {
      soLanBan[_maDienThoai] = 0;
    }
  }

  // Phương thức để bán điện thoại
  bool banDienThoai() {
    if (soLanBan[_maDienThoai]! < 1) {
      soLanBan[_maDienThoai] = soLanBan[_maDienThoai]! + 1;
      return true; // Cho phép bán
    } else {
      return false; // Không cho phép bán nếu đã bán 1 lần
    }
  }

  String get maDienThoai => _maDienThoai;
  set maDienThoai(String maDienThoai) {
    if(maDienThoai.isNotEmpty) {
      String tienTo = maDienThoai.split('-').toString().trim();
      if(tienTo == 'DT'){
        _maDienThoai = maDienThoai;
      }
    }
  }

  String get tenDienThoai => _tenDienThoai;
  set tenDienThoai(String tenDienThoai) => _tenDienThoai = tenDienThoai.isNotEmpty ? tenDienThoai : _tenDienThoai;

  String get hangDienThoai => _hangDienThoai;
  set hangDienThoai(String hangDienThoai) => _hangDienThoai = hangDienThoai.isNotEmpty ? hangDienThoai : _hangDienThoai;

  double get giaNhap => _giaNhap;
  set giaNhap(double giaNhap) => _giaNhap = giaNhap > 0 ? giaNhap : _giaNhap; 
  
  double get giaBan => _giaBan;
  set giaBan(double giaBan) => _giaBan = giaBan > 0 && giaBan > _giaNhap ? giaBan : _giaBan;

  int get soLuongTonKho => _soLuongTonKho;
  set soLuongTonKho(int soLuongTonKho) => _soLuongTonKho = soLuongTonKho >= 0 ? soLuongTonKho : _soLuongTonKho ; 

  bool get trangThai => _trangThai;
  set trangThai(bool trangThai) => _trangThai = trangThai;

  // hàm tính lợi nhuận dự kiến
  double tinhLoiNhuanDuKien() {
    return _giaBan - _giaNhap;
  }

  // hàm hiển thị thông tin
  void hienThiThongTin() {
    print('------------------ Thông tin điện thoại: ------------------');
    print('mã điện thoại: $_maDienThoai');
    print('tên điện thoại: $_tenDienThoai');
    print('hãng điện thoại: $_hangDienThoai');
    print('giá nhập: $_giaNhap');
    print('giá bán: $_giaBan');
    print('số lượng tồn kho: $_soLuongTonKho');
    print('trạng thái: ${_trangThai ? 'còn bán' : 'không còn bán' }');
  }

  void kiemTraHang() {
    print('trạng thái: ${_trangThai ? 'còn bán' : 'không còn bán' }');
  }

}