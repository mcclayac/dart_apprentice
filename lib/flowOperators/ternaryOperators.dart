

void ternary() {

  // (condition) ?  valueTrue : valueFalse;

  print('\nTernary condition');
  print('(condition) ?  valueTrue : valueFalse;');
  int oldScore = 43;
  int newScore = 55;
  print('oldScore = $oldScore,  newScore = $newScore');
  int highestScore = (oldScore > newScore) ? oldScore : newScore;
  print('highestScore = $highestScore');
  print('highestScore = (oldScore > newScore) ? oldScore : newScore = $highestScore');

}

void main() {

  ternary();

}   // end main