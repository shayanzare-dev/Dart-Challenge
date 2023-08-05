import 'library.dart';
import 'get_information.dart';
void main() {
  Library library = Library();
  GetInformation get = GetInformation(library);
  get.add();
  get.search();
}
