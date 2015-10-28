import std.stdio,std.math;

int main(char[][] arg)
{
    writef("%1.20f\n", Gauss_Legendre_algoritm(1));
    writef("%1.20f\n", Gauss_Legendre_algoritm(2));
    writef("%1.20f\n", Gauss_Legendre_algoritm(3));
    writef("%1.20f\n", Gauss_Legendre_algoritm(4));
    return 0;
}

auto Gauss_Legendre_algoritm(int num){
    double a = 1., b = 1./sqrt(2.), t = 1./4., p = 1.;
    auto temp = a;

    foreach(i; 0 .. num){
        temp = a;

        a = (temp + b) / 2;
        b = sqrt(temp * b);
        t = t - p * (temp - a) ^^ 2;
        p = 2 * p;
    }
    return ((a + b) ^^ 2) / (4 * t);
}
