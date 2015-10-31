import std.algorithm,
       std.conv,
       std.math,
       std.stdio;

void main()
{
    auto r = [0, 1, 2, 3, 4];

    r.map!(a => a + 1).writeln;
    writeln(r.map!(a => a.to!string()));
    writeln(r.sum_of_even);
}

auto sum_of_even(int[] arr){
    return arr.filter!("a % 2 == 0")
              .reduce!("a + b");
}
