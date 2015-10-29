import std.stdio,
       std.random;

int main(char[][] arg)
{
    array_foreach_ref_test();
    return 0;
}

auto array_foreach_ref_test(){
    auto array = new double[uniform(10, 20)];
    foreach(i; 0 .. array.length){
        array[i] = 1;
    }
    writeln(array[3]);
    writeln(array.length);

    foreach(ref element; array){
        element = uniform(0.0, 1.0);
    }
    writeln(array[3]);
    writeln(array.length);
}
