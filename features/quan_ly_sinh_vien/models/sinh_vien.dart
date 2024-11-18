import './lop_hoc.dart';
class SinhVien{
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

  SinhVien(this._hoTen, this._tuoi, this._maSV, this._diemTB);

  String get hoTen => _hoTen;

  set hoTen(String hoTen){
    // if(hoTen.isNotEmpty){
    //   _hoTen = hoTen;
    // }

    _hoTen = hoTen ?? _hoTen;

  }

  int get tuoi => _tuoi;

  set tuoi(int tuoi){
    _tuoi = (tuoi>0) ? tuoi : _tuoi;
  }
  String get maSV => _maSV;

  set maSV(String maSV){
    if(maSV.isNotEmpty){
      _maSV = maSV;
    }
  }
  double get diemTB => _diemTB;

  set diemTB(double diemTB){
    if(diemTB >= 0 && diemTB <= 10){
      _diemTB = diemTB;
    }
  }

  void hienThiThongTin() {
    print('Ho ten: ${_hoTen}');
    print('_tuoi: ${_tuoi}');
    print('_maSV: ${_maSV}');
    print('_diemTB: ${_diemTB}');
  }

  String xepLoai() {
    if(_diemTB >= 8.0) return 'gioi';
    if(_diemTB >= 6.5) return 'khá';
    if(_diemTB >= 5.0) return 'TB';
    return 'yếu';
  }
}


