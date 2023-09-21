import 'get_information.dart';
import 'other_methods.dart';
import 'repository.dart';

void main() {
  Repository repository = Repository(busList: [], descriptionList: {});
  GetInformation getInformation = GetInformation(repository);
  getMenu(getInformation);
}
