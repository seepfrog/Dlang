import std.stdio,std.algorithm,std.range;

int main(char[][] arg)
{
    foreach(i;0 .. 20){
        writeln(fibonacci(i));
    }
    return 0;
}

int fibonacci(int n){
    if(n < 2)return n;
    return fibonacci(n-2) + fibonacci(n-1);
}
