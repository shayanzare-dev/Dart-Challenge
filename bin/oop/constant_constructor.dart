class User{
  final int id;
   final String name;
 const User(this.id,this.name); // formal constructor
}
void main(){
  User user = User(1, 'shayan');
  User user2 = User(1, 'arman');
  User user3 = User(1, 'sdsdsd');
  print(user2.name);
}