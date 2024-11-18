import 'sach.dart';

class DocGia {
  String _maDocGia;
  String _hoTen;
  List<Sach> _danhSachMuon = [] ;

  DocGia(this._maDocGia, this._hoTen);

  String get maDocGia => _maDocGia;

  void set maDocGia(String maDocGia) {
    _maDocGia = maDocGia.isNotEmpty ? maDocGia : _maDocGia;
  }

  String get hoTen => _hoTen;

  void set hoTen(String hoTen) {
    _hoTen = hoTen.isNotEmpty ? hoTen : _hoTen;
  }

  List get danhSachMuon => _danhSachMuon;

  void muonSach(Sach sach) {
    if(sach.trangThaiMuon){
      _danhSachMuon.add(sach);
      sach.trangThaiMuon = false;
      print('Đã mượn sách thành công!');
    } else {
      print('Sách đã có người mượn!');
    }
  }

  void traSach(Sach sach) {
    _danhSachMuon.remove(sach);
    sach.trangThaiMuon = true;
    print('Đã trả sách thành công!');
  }

}