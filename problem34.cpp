// projectEulerPs.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
#include <Windows.h>
using namespace std;

void Problem34(void)
{
    int maxi = 100000;
    int fact = 1;
    int sumAllNums = 0;
    int factStore[10] = { 0 };
    factStore[0] = 1; // note: factorial(0) = 1
    for (int i = 1; i < maxi; i++)
    {
        fact = fact*i;
        if (i < 10)
        {
            factStore[i] = fact;
        }

        if (i > 2)
        {
            string istr = to_string(i);
            int leni = istr.length();
            int sumDigs = 0;
            for (int j = 0; j < leni; j++)
            {
                int dig = stoi(istr.substr(j,1));
                sumDigs += factStore[dig];
            }
            if (sumDigs == i)
            {
                cout << i << endl;
                sumAllNums += i;
            }
        }
    }
    cout << sumAllNums << endl;
}

int main()
{
    Problem34();

    int c;
    cin >> c;
	return 0;
}

