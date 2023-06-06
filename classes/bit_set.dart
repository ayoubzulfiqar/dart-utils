class BitSet {
  int _value;

  BitSet() : _value = 0;

  void flip(int k) {
    _value ^= (1 << k);
  }

  bool get(int k) {
    return ((_value >> k) & 1) == 1;
  }
}
