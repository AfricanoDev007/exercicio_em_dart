import "dart:io";

void main(List<String> args) {

 while (true) {
        print(" -*-*-*-*-*-*- Calculate *-*-*-*-*-*-*-*");
        print("PRESS 0 TO EXIT.");
        print("1 - Sum(+)");
        print("2 - Muilt(*)");
        print("3 - Sub(-)");
        print("4 - Div(/)");
        print("CHOOSE: ");

        print("");

        String? input = stdin.readLineSync();

        if (input != null) {
          
          if (input == "0") {
            print("Good bye...");
            exit(0);
          }

          try {
            int user_choice = int.parse(input);
            if (user_choice == 1) {

              print("Enter first number: ");
              String arg = stdin.readLineSync()!; // This allows the user to put a valid enter
              int args = int.parse(arg); // Argument in integer

              print("Enter the second number: ");
              var karg = stdin.readLineSync()!;// This allows the user to put a valid enter
              var kargs = int.parse(karg);// Argument in integer

              sum(args, kargs);

            } else if( user_choice == 2) {
              print("Enter first number: ");
              String arg = stdin.readLineSync()!; // This allows the user to put a valid enter
              int args = int.parse(arg); // Argument in integer

              print("Enter the second number: ");
              var karg = stdin.readLineSync()!;// This allows the user to put a valid enter
              var kargs = int.parse(karg);// Argument in integer

              mult(args, kargs);

            } else if(user_choice == 3){
              print("Enter first number: ");
              String arg = stdin.readLineSync()!; // This allows the user to put a valid enter
              int args = int.parse(arg); // Argument in integer

              print("Enter the second number: ");
              var karg = stdin.readLineSync()!;// This allows the user to put a valid enter
              var kargs = int.parse(karg);// Argument in integer

              sub(args, kargs);

            }else if(user_choice == 4){

              print("Enter first number: ");
              String arg = stdin.readLineSync()!; // This allows the user to put a valid enter
              int args = int.parse(arg); // Argument in integer

              print("Enter the second number: ");
              var karg = stdin.readLineSync()!;// This allows the user to put a valid enter
              var kargs = int.parse(karg);// Argument in integer

              div(args, kargs);

            }

          } catch (e) {
            print("Invalid Enter");
          }
          
            
        }else{
          print("Invalid Enter.");
          break;
        }
 }


}






void sum(var arg, var kargs){
  var result = arg + kargs;
  print(" Result is: $result");
}

void sub(var arg, var kargs){
  var result = arg - kargs;
  print(" Result is: $result");
}

void mult(var arg, var kargs){
  var result = arg * kargs;
  print(" Result is: $result");
}


void div(var arg, var kargs){
  var result = arg / kargs;
  print(" Result is: $result");
}