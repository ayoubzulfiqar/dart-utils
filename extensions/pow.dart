//With this extension, you can now use the pow method directly on integers

extension PowIntExtension on int {
  int pow(int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= this;
    }
    return result;
  }
}

// pow for double
extension PowDoubleExtension on double {
  double pow(double exponent) {
    double result = 1;
    for (double i = 0; i < exponent; i++) {
      result *= this;
    }
    return result;
  }
}

// pow for num (both double and Int)
extension PowExtension on num {
  num pow(num exponent) {
    num result = 1;
    for (num i = 0; i < exponent; i++) {
      result *= this;
    }
    return result;
  }
}
