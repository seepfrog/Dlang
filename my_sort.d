import std.stdio,
       std.random;
import randomizer;

void main()
{
    auto array = new int[20];
    int[6] array1 = [1,2,3,4,6,5];

    foreach(i; 0 .. array.length){
        array[i] = linear_congruential_generators(i);
    }
    array.writeln;

    bubble_sort(array);
    array.writeln;
}

/*
*  バブルソート
*  foreachは下がっていくような場合には使えないみたい
*/
void bubble_sort(int[] array){
    foreach(i; 0 .. array.length -2){
        for(int j = array.length - 1; j > 0; --j){
            if(array[j] < array[j - 1]){
                int temp = array[j];
                array[j] = array[j - 1];
                array[j - 1] = temp;
            }
        }
    }
}
