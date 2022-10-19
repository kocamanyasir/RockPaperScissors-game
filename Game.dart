import 'dart:io';
import 'dart:math';

enum Move {Rock , Paper , Scissors}

void main(){
  while (true){
    stdout.write('Choose wisely : Press Rock for 1 , Paper for 2 Scissors for 3. Type q for exit : ');
    final input = stdin.readLineSync();

    var pMove;
    
    if(input == '1'){
      pMove = Move.Rock.name;
    }
    else if (input == '2'){
      pMove = Move.Paper.name;
    }
    else if (input == '3'){
      pMove = Move.Scissors.name;
    }
    else if (input == 'q'){
      break;
    }
    else{
      print('Lütfen geçerli bir değer giriniz');
      continue;
    }
    
    final random = Random().nextInt(3);
    final AIMove = Move.values[random].name;

    print('Your Move is "$pMove"');
    print('AI move is "$AIMove"');

    if(pMove == Move.Rock && AIMove == Move.Scissors ||
    pMove == Move.Scissors && AIMove == Move.Paper ||
    pMove == Move.Paper && AIMove == Move.Rock)
    {
      print('You win against AI. Congrats');
    }
    else if(pMove == AIMove){
      print ('You draw against AI.');
    }
    else {
      print ('You lost against AI. Try again');
    }

  }

}