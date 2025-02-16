import 'dart:io';

void main() {
  // Nhập thông tin nhân viên
  stdout.write("Nhập họ tên nhân viên: ");
  String hoTen = stdin.readLineSync()!;

  stdout.write("Nhập số giờ làm việc: ");
  double soGioLam = double.parse(stdin.readLineSync()!);

  stdout.write("Nhập lương mỗi giờ: ");
  double luongMoiGio = double.parse(stdin.readLineSync()!);

  // Tính tổng lương cơ bản
  double tongLuong = soGioLam * luongMoiGio;

  // Kiểm tra có phụ cấp không
  if (soGioLam > 40) {
    tongLuong += tongLuong * 0.2; // Thêm 20% tổng lương nếu làm hơn 40 giờ
  }

  // Tính thuế thu nhập
  double thueThuNhap = 0;
  if (tongLuong > 10000000) {
    thueThuNhap = tongLuong * 0.1; // Trừ 10% nếu lương trên 10 triệu
  } else if (tongLuong >= 7000000) {
    thueThuNhap = tongLuong * 0.05; // Trừ 5% nếu lương từ 7-10 triệu
  }

  // Tính lương thực lãnh
  double luongThucLanh = tongLuong - thueThuNhap;

  // In kết quả
  print("\n===== Bảng Lương Nhân Viên =====");
  print("Họ tên: $hoTen");
  print("Tổng lương trước thuế: ${tongLuong.toStringAsFixed(2)} VND");
  print("Thuế thu nhập: ${thueThuNhap.toStringAsFixed(2)} VND");
  print("Lương thực lãnh: ${luongThucLanh.toStringAsFixed(2)} VND");
}
