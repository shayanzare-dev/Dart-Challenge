abstract class Information {
   String? name;
   String? lastName;

  void eat(){}
}

abstract class PersonCompany extends Information{
  int? mani;
  void working();
}

class Shayan extends PersonCompany{
  @override
  void working() {
    // TODO: implement working
  }

}
void main(){
Shayan shayan = Shayan();

}

