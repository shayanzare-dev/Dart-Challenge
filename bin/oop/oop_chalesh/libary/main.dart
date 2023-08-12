import 'get_information.dart';
import 'library.dart';

void main() {
  Library library = Library();
  GetInformation get = GetInformation.create(libraryParametr: library);
  get.run();
}