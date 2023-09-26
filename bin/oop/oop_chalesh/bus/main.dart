import 'get_information.dart';
import 'other_methods.dart';
import 'repository.dart';

void main() {
  final Repository repository = Repository(busList: [], descriptionList: {});
  final GetInformation getInformation = GetInformation(repository);
  getMenu(getInformation);
}