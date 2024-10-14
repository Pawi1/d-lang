import std.stdio;
import std.string : chomp;
import std.conv;
// Zadanie 6.
// Stwórz program który wyliczy ułamek podany przez użytkownika
int nww(int a, int b)
{
    int iloczyn = a*b;
    while (b > 0)
    {
        int temp_a = a;
        a = b;
        b = temp_a % b;
    }
    return iloczyn/a;
}

void main()
{
    write("Zadanie 6.\nPodaj ?/b + c/d: ");
    int l1 = readln().chomp.to!int;
    write("Podaj a/? + c/d: ");
    int m1 = readln().chomp.to!int;
    write("Podaj a/b + ?/d: ");
    int l2 = readln().chomp.to!int;
    write("Podaj a/b + c/?: ");
    int m2 = readln().chomp.to!int;
    int m3 = nww(m1,m2);
    int l3 = ((m3 / l1*m1).to!int + (m3 / l2*m2).to!int) / m3;
    writeln("= ",l3,"/",m3);
}