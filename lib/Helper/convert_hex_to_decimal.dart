class Helper {
  static List<int> hexToDecimalArray(String hexString) {
    List<int> decimalArray = [];

    for (int i = 0; i < hexString.length; i += 2) {
      String hexValue = hexString.substring(i, i + 2);
      int decimalValue = int.parse(hexValue, radix: 16);
      decimalArray.add(decimalValue);
    }

    return decimalArray;
  }
}
