import std.stdio;

int main(char[][] arg)
{
    linear_congruential_generators();
    return 0;
}

unittest {
    enum ulong m = 1UL << 32, a = 1664525, c = 1013904223;
    static assert (proper_linear_congruential_parameters(m, a, c));
    enum proper1 = proper_linear_congruential_parameters(m, a, c);
    static proper2 = proper_linear_congruential_parameters(m, a, c);
}


auto linear_congruential_generators(){
    enum uint a = 1664525, c = 1013904223, x0 = 1780588661;
    auto x = x0;
    foreach(i; 0 .. 100){
        x = a * x + c;
        writeln(x);
    }
}

ulong Euclidean_algorithm(ulong a, ulong b){
    while(b){
        auto t = b;
        b = a % b;
        a = t;
    }
    return a;
}

ulong prime_factors_only(ulong n){
        ulong accum = 1;
        ulong iter = 2;
        for(; n >= iter * iter; iter += 2 - (iter == 2)){
            if(n % iter)continue;
            accum *= iter;
            do n /= iter;while(n % iter == 0);
        }
        return accum * n;
}

bool proper_linear_congruential_parameters(ulong m, ulong a, ulong c){
    if(m == 0 || a == 0 || a >= m || c == 0 || c >= m)
        return false;
    if(Euclidean_algorithm(c ,m) != 1)
        return false;
    if((a - 1) % prime_factors_only(m))
        return false;
    if((a - 1) % 4 == 0 && m % 4)
        return false;
    return true;
}
