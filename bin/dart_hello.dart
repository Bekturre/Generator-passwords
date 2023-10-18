


import 'dart:io';
import 'dart:math';

void main(){
password();
}

void password(){
String str ='2392909932039029';
String password = '';
print('из скольки символов должен состоять пароль? \n4\n6\n8\n10\n12');
int passlength = int.parse(stdin.readLineSync()?? '');
if(passlength!= 4 && 
passlength!= 6 && 
passlength!= 8 && 
passlength!= 10 && 
passlength!= 12  ){
  print('Неправильная длина пароля.  Выберите \n4\n6\n8\n10\n12');
  return;
}
for (int i = 1; i<=passlength; i++){
  int randomIndex = Random().nextInt(str.length);
  password += str[randomIndex];
}
print(password);
}