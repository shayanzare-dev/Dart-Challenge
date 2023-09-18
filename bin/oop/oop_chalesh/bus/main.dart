import 'get_information.dart';
import 'repository.dart';

void main() {
  Repository repository = Repository([], []);
  GetInformation getInformation = GetInformation(repository);
  getInformation.ticketBook();
}
