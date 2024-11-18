class DienThoai {
  String _maDienThoai;
  String _tenDienThoai;
  String _hangDienThoai;
  double _giaNhap;
  double _giaBan;
  int _soLuongTonKho;
  bool _trangThai;

  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangDienThoai, this._giaNhap, this._giaBan, this._soLuongTonKho, this._trangThai);

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

  double tinhLoiNhuanDuKien() {
    return _giaBan - _giaNhap;
  }

  void hienThiThongTin() {
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