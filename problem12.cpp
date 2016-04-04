// projectEulerProbs.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <Windows.h>
using namespace std;



int DivisorCount(int n)
{
    int count = 2;
    int sqRtN = (int)sqrt(n) + 1;
    // For every number up to n...
    for (int i = 2; i < sqRtN; i++)
    {
        // Check if n is divisible...
        if (n % i == 0)
        {
            count += 2;
        }
    }

    return count;
}

void Problem12()
{
    int i = 0;
    int sum = 0;
    int total = 0;
    int cnt = 0;
    int max = 0;

    while (1)
    {
        i++;
        sum += i;

        total = DivisorCount(sum);

        if (max < total)
        {
            max = total;
            cout << max << "  " << sum << endl;
        }

        if (total > 500)
        {
            cout << endl << "ans = " << sum;
            break;
        }
    }
}

int main()
{
    Problem12();

    int pause;
    cin >> pause;
    return 0;
}

