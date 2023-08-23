import 'get_information.dart';
import 'library.dart';

void main() {
 final Library library = Library();
 final GetInformation get = GetInformation.create(libraryParametr: library);
  get.run();
}