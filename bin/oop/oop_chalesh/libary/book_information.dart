class Book{
  final String bookName;
  final String writer;
  final String yearPublic;
  final int price;

  const Book(this.bookName, this.writer, this.yearPublic, this.price);

  factory Book.factory(
      String bookName, String writer, String yearPublic, int price) {
    return Book(bookName, writer, yearPublic, price);
  }
}
