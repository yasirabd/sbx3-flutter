void main() {
  var ipk = 2.3;
  var presensi = 8;

  if (ipk >= 3 && presensi >= 10) {
    print('Anda Layak Jadi Cawapres!');
  } else if (ipk >= 2.5 || presensi >= 9) {
    print('Anda Cukup Layak Jadi Cawapres!');
  } else {
    print('Anda Tidak Layak Jadi Cawapres!');
  }
}
