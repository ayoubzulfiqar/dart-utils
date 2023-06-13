/*

In this extension, the isEqual function takes a List<T> as a parameter and compares each element in the list using a for-loop.
It first checks if the lengths of the two lists are equal and returns false if they are not.

For elements that are not equal, it performs additional checks based on their types.
If both elements are of type num, it attempts to parse their string representations to compare their numeric values. If both elements are of type String, it attempts to parse the strings back to integers for comparison.

Note that this implementation assumes the elements in the lists can be parsed as numbers or strings that represent valid numbers. If the elements are of other types, you may need to modify the extension to handle those cases accordingly.

Now, you can use the extension on any List by importing the file where the extension is defined and call the isEqual method on a List instance:

*/

extension ListEqualityExtension<T, U> on List<T> {
  bool isEqual(List<U> other) {
    if (length != other.length) {
      return false;
    }

    for (int i = 0; i < length; i++) {
      if (this[i].toString() != other[i].toString()) {
        return false;
      }
    }

    return true;
  }
}


// extension ListEqualityExtension2<T> on List<T> {
//   bool isEqual3(List<T> other) {
//     if (length != other.length) {
//       return false;
//     }

//     for (int i = 0; i < length; i++) {
//       if (this[i] != other[i]) {
//         if (this[i] is num && other[i] is num) {
//           // Parse string representations of numbers
//           if (num.tryParse(this[i].toString()) !=
//               num.tryParse(other[i].toString())) {
//             return false;
//           }
//         } else if (this[i] is String && other[i] is String) {
//           // Compare strings directly
//           if (num.parse(this[i].toString()) != other[i]) {
//             return false;
//           }
//         } else {
//           return false;
//         }
//       }
//     }

//     return true;
//   }
// }

void main() {
  final list1 = [1, 2, 3];
  final list2 = [1, 2, 3];
  print(list1.isEqual(list2)); // Output: true

  final list3 = [1, 2, 3];
  final list4 = [1, 2, 4];
  print(list3.isEqual(list4)); // Output: false

  final list5 = ['1', '2', '3'];
  final list7 = ["54", "23", "43"];
  final list6 = [1, 2, 3];
  print(list5.isEqual(list6)); // Output: true
  print(list6.isEqual(list5));
  print(list7.isEqual(list5));
}


