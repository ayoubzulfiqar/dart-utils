// convert the number to HEX value
/*

Hex, short for hexadecimal, is a base-16 number system commonly used in computing and digital systems.
It uses 16 digits to represent numbers, from 0 to 9 and A to F.
The decimal numbers 10 to 15 are represented by the letters A to F, respectively. 

In hex, each digit's value is determined by its position, similar to the decimal system.
However, in hex, each position represents a power of 16 instead of 10.
The rightmost digit represents 16^0 (which is 1), the next digit to the left represents 16^1 (which is 16), the next represents 16^2 (which is 256), and so on.

Hexadecimal is often used in computer programming for various purposes, including representing memory addresses, color codes, and encoding binary data. It is also used to represent characters in Unicode and ASCII encoding.

For example, the hex number "2A" represents the decimal number 42, where 2 is multiplied by 16^1 (32) and A (which is equivalent to 10) is multiplied by 16^0 (10), resulting in a total of 42.


*/

// For String
import 'dart:typed_data';

extension ToHexInt on int {
  String toHexInt() {
    if (this == 0) return "0";

    int n = this.toUnsigned(32);
    final String ref = "0123456789abcdef";

    String result = "";

    while (n != 0) {
      result = ref[n & 0xF] + result;
      n >>= 4;
    }

    return result;
  }
}
// for double

extension ToHexDouble on double {
  String toHexDouble() {
    if (this == 0.0) {
      return "0";
    }

    final buffer = Float64List(1);
    buffer[0] = this;
    int bits = buffer.buffer.asInt64List()[0].toUnsigned(64);
    final String ref = "0123456789abcdef";

    String result = "";

    while (bits != BigInt.zero) {
      final int nibble = bits.toInt() & 0xF;
      result = ref[nibble] + result;
      bits >>= 4;
    }

    return result;
  }
}

extension ToHex on num {
  String toHex() {
    if (this is int) {
      return _toHexInt();
    } else if (this is double) {
      return _toHexDouble();
    } else {
      throw ArgumentError("Unsupported type: ${this.runtimeType}");
    }
  }

  String _toHexInt() {
    if (this == 0) return "0";

    // int n = this.toUnsigned(32);
    int n = this.toInt().toUnsigned(32);
    final String ref = "0123456789abcdef";

    String result = "";

    while (n != 0) {
      result = ref[n & 0xF] + result;
      n >>= 4;
    }

    return result;
  }

  String _toHexDouble() {
    final Float64List buffer = Float64List(1);
    buffer[0] = this.toDouble();
    final int bits = ByteData.view(buffer.buffer).getInt64(0);
    final String ref = "0123456789abcdef";

    String result = "";

    for (int i = 60; i >= 0; i -= 4) {
      final int nibble = (bits >> i) & 0xF;
      result += ref[nibble];
    }
    return result;
  }
}
