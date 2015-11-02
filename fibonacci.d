import std.stdio,std.algorithm,std.range;

void main()
{
    foreach(i;0 .. 20){
        fibonacci(i).writeln;
    }
}

int fibonacci(int n){
    return n < 2 ? 1 : fibonacci(n-1) + fibonacci(n-2);
}
