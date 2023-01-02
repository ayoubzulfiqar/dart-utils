/*

The Dart String equals() method compares the two given strings based on the content of the string. If any character is not matched, it returns false. If all characters are matched, it returns true.


*/

extension Equals on String {
  bool equals(Object anObject) {
    if (identical(this, anObject)) {
      return true;
    }
    if (anObject is String) {
      String anotherString = anObject;
      int n = codeUnits.length;
      if (n == anotherString.codeUnits.length) {
        List<int> v1 = codeUnits;
        List<int> v2 = anotherString.codeUnits;
        int i = 0;
        while (n-- != 0) {
          if (v1[i] != v2[i]) {
            return false;
          }
          i++;
        }
        return true;
      }
    }
    return false;
  }
}
