/*

Change The Size of List

*/

import 'dart:math';

extension CutList<T> on List<T?> {
  List<T?> cutList(List<T?> oldList, int newLength) {
    return List<T?>.filled(newLength, null)
      ..setRange(0, min(newLength, oldList.length), oldList);
  }
}
// extension CutList<T> on List<T?> {
//   List<T?> cutList(List<T?> oldList, int newLength) {
//     return <T?>[
//       ...oldList.take(newLength),
//       for (var i = oldList.length; i < newLength; i++) null
//     ];
//   }
// }
