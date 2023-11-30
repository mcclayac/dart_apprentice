

void breakingOutOfLoop() {


  print('\nBreaking out of loop');
  int sum = 1;
  while(true) {
    sum += 4;
    print('sum = $sum');
    if ( sum >= 10) break;  // breaking out of loop
  }  // end while(true)
}  // end void breakingOutOfLoop()

void continueKeyword() {

  for (int i = 0 ; i <= 10; i++) {
    if (i.isEven) continue;   // using continue
    print('i = $i');
  }  // end for (int i = 0 ; i <= 10; i++)
}  // end void continueKeyword()


void main() {

  breakingOutOfLoop();
  continueKeyword();
}  // end main