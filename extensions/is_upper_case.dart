extension UpperCase on String {
  bool isUpperCase(String str) {
    if (str.codeUnitAt(0) == str.toUpperCase()) {
      return true;
    }
    return false;
  }
}
