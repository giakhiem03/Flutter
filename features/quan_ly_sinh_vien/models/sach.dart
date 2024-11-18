class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThaiMuon;

  Sach(this._maSach, this._tenSach, this._tacGia, this._trangThaiMuon);

  String get maSach => _maSach;

  void set maSach(String maSach) {
    _maSach = maSach.isNotEmpty ? maSach : _maSach;
  }

  String get tenSach => _tenSach;

  void set tenSach(String tenSach) {
    _tenSach = tenSach.isNotEmpty ? tenSach : _tenSach;
  }
  String get tacGia => _tacGia;

  void set tacGia(String tacGia) {
    _tacGia = tacGia.isNotEmpty ? tacGia : _tacGia;
  }
  bool get trangThaiMuon => _trangThaiMuon;

  void set trangThaiMuon(bool trangThaiMuon) {

    _trangThaiMuon = trangThaiMuon;

  }

  void hienThiThongTinSach() {
    print('Mã sách: ${_maSach}');
    print('Tên sách: ${_tenSach}');
    print('Tác Giả: ${_tacGia}');
    var trangThaiMuon = _trangThaiMuon==false ? 'đã có người mượn' : 'chưa có người mượn';
    print('Trạng thái mượn: ${trangThaiMuon}');
  }

}