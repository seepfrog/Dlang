import std.stdio;

int main(char[][] arg)
{
    fizzbuzz_generator(100);
    return 0;
}

/*fizzbuzz!*/
void fizzbuzz_generator(int num){
  foreach(x;1 .. num){
    if(x%15==0){
      writeln("fizzbuzz");
    }else if(x%3==0){
      writeln("fizz");
    }else if(x%5==0){
      writeln("buzz");
    }else {
      writeln(x);
    }
  }
}
