// projectEuler.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <algorithm>
#include <vector>
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

void Problem50()
{

    int idx2 = 0;
    int idx = 0;
    int sum = 0;
    int priCnt = 0;
    int maxPriCnt = 0;
    int divNum = 0;

    // use heap
    int *primes = new int[784988]; // made the size of number of primes under 1mil
    int maxidx = 0;
    int maxp = 0;
    int maxPrimeTest = 1000000;
    for (int i = 2; i < maxPrimeTest; i++)
    {
        divNum = DivisorCount(i);
        if (divNum == 2)
        {
            idx2++;
            primes[idx2] = i;
            //for (int sidx = 0; sidx < 167; sidx++)
            for (int sidx = 0; sidx < 784987; sidx++)
            {
                idx = sidx;
                sum = 0;
                priCnt = 0;
                while (sum < i)
                {
                    idx++;
                    if (idx < idx2)
                    {
                        if (primes[idx] <= maxPrimeTest)
                        {
                            sum = sum + primes[idx];
                            priCnt++;
                        }
                    }
                    else
                    {
                        break;
                    }
                    if (sum == i && priCnt > maxPriCnt)
                    {
                        maxidx = idx;
                        maxPriCnt = priCnt;
                        maxp = primes[idx2];
                        cout << maxp << " " << maxPriCnt << endl;
                    }
                }
            }
        }

    }
}

int main()
{
    Problem50();

    int c;
    cin >> c;
	return 0;
}

