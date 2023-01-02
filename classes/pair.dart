/*

Pair Class

Just like JavaScript and C++

Pair is used to combine together two values that may be of different data types.
Pair provides a way to store two heterogeneous objects as a single unit.
It is basically used if we want to store tuples.
The pair container is a simple container defined in <utility> header consisting
of two data elements or objects.

The first element is referenced as ‘first’ and the second element as last and the order is
fixed (first, last).
Pair can be assigned, copied, and compared.
The array of objects allocated in a map or hash_map is of type ‘pair’ by default in
which all the ‘first’
elements are unique keys associated with their ‘last’ value objects.
To access the elements, we use variable name followed by dot operator followed by
the keyword first or second.


*/

class Pair<E, F> {
  final E first;
  final F last;

  Pair(this.first, this.last);

  @override
  int get hashCode => first.hashCode ^ last.hashCode;

  @override
  bool operator ==(other) {
    if (other is! Pair) {
      return false;
    }
    return other.first == first && other.last == last;
  }

  @override
  String toString() => '($first, $last)';
}
