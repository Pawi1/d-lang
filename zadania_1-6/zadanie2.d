import std.stdio;
import std.conv;
import std.string : chomp;
// Zadanie 2.
// Stwórz program który wczyta od użytkownika 10 liczb, program ma znaleść liczby doskonałe i je zwrócić
int[] giveDivisors (int a)
{
    int[] divisors = new int[0];
    for (int i = 1;i < a; i++ )
    {
        if(a%i == 0)
            divisors ~= [i];
    }
    return divisors;
}
void main()
{
    int[] perfectNumbers = new int[0]; 
    writeln("Zadanie 2\nPoddawaj n:");
    for(int i = 0;i<10;i++)
    {
        int userNumber = readln().chomp.to!int;
        int sumOfDivisours = 0;
        int[] divisours = giveDivisors(userNumber);
        foreach (_, value; divisours)
            sumOfDivisours += value;
        
        if (sumOfDivisours == userNumber && userNumber != 0)
            perfectNumbers ~= [userNumber];
    }
    if(perfectNumbers.length > 0)
    {
        writeln("Program znalazł ",perfectNumbers.length," liczby doskonałe, oto one:");
        foreach (value; perfectNumbers)
        {
            write(value," ");
        }
    }
    else
    {
        write("Użytkownik nie podał żadnej liczby pierwszej…");    
    }

}