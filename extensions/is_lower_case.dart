extension LowerCase on String {
  bool isUpperCase(String str) {
    if (str.codeUnitAt(0) == str.toLowerCase()) {
      return true;
    }
    return false;
  }
}
