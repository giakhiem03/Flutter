import 'dien_thoai.dart';
import 'dien_thoai_ton_kho.dart';
import 'hoa_don.dart';
import 'top_dien_thoai.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  CuaHang(this._tenCuaHang, this._diaChi);

  String get tenCuaHang => _tenCuaHang;
  set tenCuaHang(String tenCuaHang) =>
      _tenCuaHang = tenCuaHang.isNotEmpty ? tenCuaHang : _tenCuaHang;

  String get diaChi => _diaChi;
  set diaChi(String diaChi) => _diaChi = diaChi.isNotEmpty ? diaChi : _diaChi;

  List<DienThoai> get danhSachDienThoai => _danhSachDienThoai;
  List<HoaDon> get danhSachHoaDon => _danhSachHoaDon;

  void themMoiDienThoai(DienThoai dienThoai) {
    _danhSachDienThoai.add(dienThoai);
  }

  // cập nhập thông tin điện thoại
  void capNhatThongTinDienThoai(DienThoai dienThoai) {
    DienThoai? dienThoaiDuocTim;
    _danhSachDienThoai.forEach((dt) {
      dienThoaiDuocTim = dt.maDienThoai == dienThoai.maDienThoai ? dt : null;
    });

    if (dienThoaiDuocTim == null) {
      print('không tìm thấy điện thoại!');
    } else {
      try {
        dienThoaiDuocTim?.tenDienThoai = dienThoai.tenDienThoai;
        dienThoaiDuocTim?.hangDienThoai = dienThoai.hangDienThoai;
        dienThoaiDuocTim?.giaNhap = dienThoai.giaNhap;
        dienThoaiDuocTim?.giaBan = dienThoai.giaBan;
        dienThoaiDuocTim?.soLuongTonKho = dienThoai.soLuongTonKho;
        dienThoaiDuocTim?.trangThai = dienThoai.trangThai;
      } catch (e) {
        print('có lỗi $e');
      }
    }
  }

  void ngungKinhDoanh(DienThoai dienThoai) {
    dienThoai.trangThai = false;
    print('điện thoại ${dienThoai.tenDienThoai} đã ngừng kinh doanh!');
  }

  // tìm kiếm điện thoại theo mã điện thoại (bắt buộc phải nhập) và optional: tên điện thoại, hãng điện thoại
  void timKiemDienThoai(String maDienThoai, [String? tenDienThoai, String? hangDienThoai]) {
    DienThoai? dienThoaiDuocTim;
    if (hangDienThoai.toString().trim() != '') {
      _danhSachDienThoai.forEach((dt) {
        dienThoaiDuocTim = (dt.maDienThoai == maDienThoai && dt.tenDienThoai == tenDienThoai && dt.hangDienThoai == hangDienThoai) ? dt : null;
      });
    } else if (tenDienThoai.toString().trim() != '') {
      _danhSachDienThoai.forEach((dt) {
        dienThoaiDuocTim = (dt.maDienThoai == maDienThoai && dt.tenDienThoai == tenDienThoai) ? dt : null;
      });
    }
    _danhSachDienThoai.forEach((dt) {
      dienThoaiDuocTim = (dt.maDienThoai == maDienThoai) ? dt : null;
    });

    if (dienThoaiDuocTim != null) {
      dienThoaiDuocTim?.hienThiThongTin();
    } else {
      print('không tìm thấy điện thoại có thông tin trên!');
    }
  }

  void hienThiDanhSachDT() {
    _danhSachDienThoai.forEach((dt) => dt.hienThiThongTin());
  }


  // tạo hóa đơn cho điện thoại
  void taoHoaDon(HoaDon hoaDon) {
    DienThoai? dienThoai;
    _danhSachDienThoai.forEach((dt) => dienThoai = dt.maDienThoai == hoaDon.dienThoaiDuocBan.maDienThoai ? dt : null);
    if (dienThoai != null) {
      dienThoai?.soLuongTonKho -= 1;
      _danhSachHoaDon.add(hoaDon);
    } else
      print('không tìm thấy điện được bán');
  }

  // tìm kiếm hóa đơn theo mã hóa đơn (bắt buộc) và optional: ngày bán, tên khách hàng
  void timKiemHoaDon(String maHoaDon, [DateTime? ngayBan, String? tenKhachHang]) {
    HoaDon? hoaDonDuocTim;
    if (tenKhachHang.toString().trim() != '') {
      _danhSachHoaDon.forEach((hd) {
        hoaDonDuocTim = (hd.maHoaDon == maHoaDon && hd.ngayBan == ngayBan && hd.tenKhachHang == tenKhachHang) ? hd : null;
      });
    } else if (ngayBan.toString().trim() != '' && ngayBan.runtimeType == DateTime) {
      _danhSachHoaDon.forEach((hd) {
        hoaDonDuocTim =
            (hd.maHoaDon == maHoaDon && hd.ngayBan == ngayBan) ? hd : null;
      });
    }
    _danhSachHoaDon.forEach((hd) {
      hoaDonDuocTim = (hd.maHoaDon == maHoaDon) ? hd : null;
    });

    if (hoaDonDuocTim != null) {
      hoaDonDuocTim?.hienThiThongTinHoaDon();
    } else {
      print('không tìm thấy điện thoại có thông tin trên!');
    }
  }

  void hienThiDanhSachHD() {
    _danhSachHoaDon.forEach((hd) => hd.hienThiThongTinHoaDon());
  }

  // tính tổng doanh thu theo khoảng thời gian
  double tongDoanhThuTheoKhoangThoiGian(DateTime ngayBatDau, DateTime ngayKetThuc) {
    double tongDoanhThu = 0;
    _danhSachHoaDon.forEach((hd) {
      if (hd.ngayBan.isAfter(ngayBatDau) && hd.ngayBan.isBefore(ngayKetThuc)) {
        tongDoanhThu += hd.tinhTongTien();
      }
    });
    return tongDoanhThu;
  }

  // tính tổng lợi nhuận theo khoảng thời gian
  double tongLoiNhuanTheoKhoangThoiGian(DateTime ngayBatDau, DateTime ngayKetThuc) {
    double tongLoiNhuan = 0;
    _danhSachHoaDon.forEach((hd) {
      if (hd.ngayBan.isAfter(ngayBatDau) && hd.ngayBan.isBefore(ngayKetThuc)) {
        tongLoiNhuan += hd.loiNhuanThucTe();
      }
    });
    return tongLoiNhuan;
  }

  // thống kê top điện thoại bán chạy
  void topDienThoaiBanChay() {
    TopDienThoai.tinhTopDienThoai();
  }

  void thongKeTonKho() {
    DienThoaiTonKho.thongKeTonKho();
  }
}
