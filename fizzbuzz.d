import std.stdio;

int main(char[][] arg)
{
    fizzbuzz_generator_by_if(100);
    return 0;
}

/*fizzbuzz!*/
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

auto fizz(){writeln("fizz");}
void buzz(){ writeln("buzz");}
void fizzbuzz(){ writeln("fizzbuzz");}


void fizzbuzz_by_switch(int num){

}
