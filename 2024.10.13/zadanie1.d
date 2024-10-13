import std.stdio;
import std.math;
import std.conv;

void main()
{
    // Zadanie 1.
    // Stwórz program który stworzy tablice liczb pierwszych, użyj Sita Eratostenesa, n podane przez użytkownika
    write("Zadanie 1\nPodaj n: ");
    int n = 0;
    readf("%s",&n);
    bool[] sito = new bool[n];
    for (int i = 0; i<n;i++)
    {
        sito[i] = true;
    }
    sito[0] = sito[1] = false;
    
    for(int i = 2; i <= to!int(sqrt(to!float(n))); i++)
    {
        if(sito[i])
        {        
            for(int j = i*i; j < n; j += i)
                sito[j] = false;
        }
    }
    foreach (key, value; sito)
        if(value)
            writeln(key," pierwsza");
}