import  std.stdio;

// Zadanie 3.
// Stwórz program który wypisze n par liczb bliźniaczych
int isPrime(int a)
{
    for(int i = 2;i<a;i++)
    {
        if (a % i == 0)
            return false;
    }
    return true;
}
int isTwinPrime(int a, int b)
{
    return(isPrime(a) && isPrime(b) && (a+2 == b || b+2 == a));
}    
void main()
{
    write("Zadanie 3\nPodaj n: ");
    int n = 0;
    readf("%d",&n);
    writeln("Oto ",n," pary liczb bliżniaczych:");
    for(int i = 2, j = 0; j<n; i++)
    {
        if(isPrime(i) && isPrime(i+2) && isTwinPrime(i,i+2))
        {    
            write(i," ",i+2,"\n");
            j++;
        }
    }
}