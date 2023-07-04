/*


Convert the Color to the HEX Color
For Example

When we Copy the color #FEFBFF its like this so it convert into proper hex

Like this "0xFFbfeb91"

```dart
 Color(0xFFbfeb91).
```
*/

extension ColorExtension on String {
  Color toColor() {
    final String hexString = replaceAll('#', '');
    final int? hexValue = int.tryParse(hexString, radix: 16);
    if (hexValue != null) {
      if (hexString.length == 6 || hexString.length == 8) {
        return Color(hexValue);
      }
    }
    throw FormatException('Invalid color format: $this');
  }
}


// Just for to shut-up the Error but you don't need this class in flutter
class Color {
  Color(int hexValue);
}