import 'get_information.dart';
GetInformation getInformation = GetInformation();
extension Image<T> on  GetInformation{
  String get imageUrl =>
      'https://cinemaetemad.ir/wp-content/uploads/2023/06/ilan-mask-780x470.jpg';

  String get imageType => 'the type is $T';
}
