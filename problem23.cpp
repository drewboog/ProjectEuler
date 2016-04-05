// projectEulerProbs.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <Windows.h>
using namespace std;

bool CheckIfAbun(int n)
{
    int count = 1; // 1 is always a divisor
    float sqRtN = sqrt(n);
    // For every number up to n...
    for (int i = 2; i < (int)(sqRtN+1); i++)
    {
        // Check if n is divisible...
        if (n % i == 0)
        {
            count += i;
            if ((float)i < sqRtN)
            { 
                count += n/i;
            }
        }
    }

    bool abunNum = false;
    if (count > n)
    {
        abunNum = true;
    }
    return abunNum;
}

void Problem23()
{
    int listOfAbun[10000];
    int idx = 0;
    for (int i = 1; i < 28123; i++)
    {
        if (CheckIfAbun(i))
        {
            listOfAbun[idx] = i;
            idx++;
        }
    }

    int sum1 = 0;
    int sum2 = 0;
    int sum = 0;
    int counti = 0;
    bool exists = false;
    for (int i = 1; i < 28123; i++)
    {
        exists = false;
        for (int j = 0; j < idx; j++)
        {
            sum1 = listOfAbun[j];

            for (int k = 0; k < idx; k++)
            {
                sum2 = listOfAbun[k];
                sum = sum1 + sum2;
                if (sum == i)
                {
                    exists = true;
                    break;
                }
                if (sum > i || k > i)
                {
                    break;
                }
            }
            if (j > i || sum == i)
            {
                break;
            }
        }
        if (!exists)
        {
            cout << i << endl;
            counti += i;
        }
    }
    cout << counti << endl;
    cout << "done";
}

int main()
{
    Problem23();

    int c;
    cin >> c;
	return 0;
}

