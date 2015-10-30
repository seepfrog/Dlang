import std.stdio,
       std.random;

int main(char[][] arg)
{
    array_foreach_ref_test();
    slice_test();
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

auto slice_test(){
    int[5] array = [10, 20, 30, 40, 50];
    auto slice = array[2 .. $];
    writeln(slice);

    slice = array[];
    writeln(slice);
}
