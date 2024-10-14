import std.stdio;
// Zadanie 5.
// Stwórz program który sprawdzi czy liczba podana przez użytkownika jest pierwsza wesoła
int sumOfSquaers(int n)
{
    int sum = 0;
    while(n > 0)
    {
        int d = n%10;
        sum += d * d;
        n /= 10;
    }
    return sum;
}
int isHappyNumber(int n)
{
    int[] seen;
    while (n != 1)
    {
        if(seen.length > 0)
        {
            foreach (_,value; seen)
            {
                if(value == n)
                    return false;
            }
        }
        seen ~= n;
        n = sumOfSquaers(n);
    }
    return true;
}
int isPrime(int a)
{
    for(int i = 2;i<a;i++)
    {
        if (a % i == 0)
            return false;
    }
    return true;
}
void main()
{
    int n = 0;
    write("Zadanie 4\nPodaj n: ");
    readf("%d",&n);
    if(isHappyNumber(n) && isPrime(n))
        writeln("Licza ",n," jest szczęsliwa pierwsza");
    else if(isHappyNumber(n))
        writeln("Licza ",n," jest szczęsliwa");
    else
        writeln("Licza ",n," nie jest szczęsliwa");
    
}