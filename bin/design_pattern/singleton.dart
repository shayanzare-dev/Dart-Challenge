class A {
  static A? _instance;

  A._();

  static getInstance() {
    // اگر متغیر instance نال بود مقدار A.-() رو بریز داخلش
    _instance ??= A._();
    return _instance;
  }
}
