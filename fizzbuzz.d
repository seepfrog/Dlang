import std.stdio;

int main(char[][] arg)
{
    fizzbuzz_generator_by_switch(100);
    return 0;
}

/*-------if fizzbuzz!----------------*/
void fizzbuzz_generator_by_if(int num){
  foreach(x;1 .. num){
    if(x%15==0){
      fizzbuzz();
    }else if(x%3==0){
      fizz();
    }else if(x%5==0){
      buzz();
    }else {
      writeln(x);
    }
  }
}

/*-----------write fizzbuzz!-------------*/

auto fizz(){writeln("fizz");}
void buzz(){ writeln("buzz");}
void fizzbuzz(){ writeln("fizzbuzz");}

/*--------------switch fizzbuzz!---------*/

void fizzbuzz_generator_by_switch(int num){
    foreach(x;1 .. num){
      switch (x%15) {
        case 0          : fizzbuzz();break;
        case 3,6,9,12   : fizz();break;
        case 5,10       : buzz();break;
        default         : writeln(x);break;
      }
    }
}
