void main(List<String> args) {
  String number = args[0];
  int nb = int.parse(number);

  if (nb > 0) {
    print('$nb is positive');
  } else if (nb == 0) {
    print('$nb is zero');
  } else {
    print('$nb is negative');
  }
}
