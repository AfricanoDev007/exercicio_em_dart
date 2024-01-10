import "dart:io";
import "dart:math";



void main(List<String> args) {
  print(" ---------- Password Generator ----------");
  print(" Enter your name");
  String user_name = stdin.readLineSync()!; 
  
  List my_password = generator();
  print("'$user_name' your password is: $my_password");
}

List generator(){
   List password = [];
   List numbers = [1,2,3,4,5,7,8,9];
   List letters = ['a','b', 'c', 'd', 'e','f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
   List symbols = ['[', ']', '{', '}', "@", "£", "§", "/", "?"];
   
   List collection = letters  + symbols + numbers;

  final random = new Random();
  for (var n = 0; n < 9; n++) {
    var i = random.nextInt(collection.length);
    var letter = collection[i];
    password.add(letter);
  }
  return password;
}


