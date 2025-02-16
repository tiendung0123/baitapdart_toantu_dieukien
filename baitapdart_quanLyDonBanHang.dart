import 'dart:io';

void main() {
  // Nhập thông tin sản phẩm
  stdout.write("Nhập tên sản phẩm: ");
  String tenSanPham = stdin.readLineSync()!;

  stdout.write("Nhập số lượng mua: ");
  int soLuong = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập đơn giá: ");
  double donGia = double.parse(stdin.readLineSync()!);

  // 1. Tính thành tiền
  double thanhTien = soLuong * donGia;

  // 2. Tính giảm giá
  double giamGia = 0;
  if (thanhTien >= 1000000) {
    giamGia = thanhTien * 0.1; // Giảm 10%
  } else if (thanhTien >= 500000) {
    giamGia = thanhTien * 0.05; // Giảm 5%
  }

  // 3. Tính thuế VAT (8% trên tổng tiền sau giảm giá)
  double tongSauGiamGia = thanhTien - giamGia;
  double thueVAT = tongSauGiamGia * 0.08;

  // 4. Tính tổng số tiền phải thanh toán
  double tongThanhToan = tongSauGiamGia + thueVAT;

  // 5. In hóa đơn
  print("\n===== HÓA ĐƠN MUA HÀNG =====");
  print("Tên sản phẩm: $tenSanPham");
  print("Số lượng: $soLuong");
  print("Đơn giá: ${donGia.toStringAsFixed(2)} VND");
  print("Thành tiền: ${thanhTien.toStringAsFixed(2)} VND");
  print("Giảm giá: ${giamGia.toStringAsFixed(2)} VND");
  print("Thuế VAT (8%): ${thueVAT.toStringAsFixed(2)} VND");
  print("Tổng thanh toán: ${tongThanhToan.toStringAsFixed(2)} VND");
}
