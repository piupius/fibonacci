#include <iostream>

using namespace std;

main()
{
    int n, a = 1, b = 0;

    cout << "Number of terms: ";
    cin >> n;

    cout << b << endl;
    cout << a << endl;

    for (int i = 0; i <= n; i++)
    {
        a += b;
        b = a - b;
        cout << a << endl;
    }
}
