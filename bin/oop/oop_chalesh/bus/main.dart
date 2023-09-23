import 'get_information.dart';
import 'repository.dart';
import 'other_methods.dart';
void main() {
  Repository repository = Repository(busList: [], descriptionList: {});
  GetInformation getInformation = GetInformation(repository);
  getMenu(getInformation);
}
