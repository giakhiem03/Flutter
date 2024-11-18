import '../models/doc_gia.dart';
import '../models/sach.dart';
import '../models/thu_vien.dart';

void main() {
  var sach1 = Sach('001', 'Sach 01', 'Gia Khiem', true);
  print(sach1.maSach);
  sach1.maSach = '002';
  print('mã sách sau khi set lại: ${sach1.maSach}');

  var docgia1 = DocGia('001', 'Huỳnh Gia Khiêm');
  docgia1.muonSach(sach1);
  print('trạng thái sách: ${sach1.trangThaiMuon}');
  var thuVien = ThuVien();
  thuVien.themSach(sach1);
  thuVien.hienThiDanhSachCuaSach();
  print('---');
  docgia1.traSach(sach1);
  thuVien.hienThiDanhSachCuaSach();

}