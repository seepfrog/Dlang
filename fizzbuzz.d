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
      write_fizzbuzz("fizzbuzz");
    }else if(x%3==0){
      write_fizzbuzz("fizz");
    }else if(x%5==0){
      write_fizzbuzz("buzz");
    }else {
      writeln(x);
    }
  }
}

/*---------switch fizzbuzz!---------------*/

void fizzbuzz_generator_by_switch(int num){
    foreach(x;1 .. num){
      switch (x%15) {
        case 0          : write_fizzbuzz("fizzbuzz");break;
        case 3,6,9,12   : write_fizzbuzz("fizz");break;
        case 5,10       : write_fizzbuzz("buzz");break;
        default         : writeln(x);break;
      }
    }
}

/*---------write fizzbuzz---------------*/

auto write_fizzbuzz(string name){
    switch(name){
      case "fizz"     : writeln("fizz");break;
      case "buzz"     : writeln("buzz");break;
      case "fizzbuzz" : writeln("fizzbuzz");break;
      default         : writeln("YOU MUST LOVE FIZZBUZZ!");break;
    }
}
