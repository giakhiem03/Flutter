import 'doc_gia.dart';
import 'sach.dart';

class ThuVien {
  List<Sach> _danhSachCuaSach = [];
  List<DocGia> _danhSachDocGia = []; 

  List get danhSachCuaSach => _danhSachCuaSach;
  List get danhSachDocGia => _danhSachDocGia;

  void themSach(Sach sach) {
    _danhSachCuaSach.add(sach);
  }

  void themDocGia(DocGia docGia) {
    _danhSachDocGia.add(docGia);
  }

  void hienThiDanhSachCuaSach() {
    for(var sach in _danhSachCuaSach) {
      sach.hienThiThongTinSach();
    }
  }

}