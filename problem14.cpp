// projectEulerProbs.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <Windows.h>
using namespace std;

int Problem14()
{
    int maxcount = 0;
    //int i = 13;
    for (int i = 2; i < 1000000; i++)
    {
        unsigned int j = i; // int is not large enough for all values!! 
        int count = 1;
        while (j > 1)
        {
            if (j % 2 == 0)
            {
                j = j / 2;
            }
            else
            {
                j = 3 * j + 1;
            }
            count++;
            if (count > maxcount)
            {
                maxcount = count;
                cout << maxcount << " , " << i << " , " << j << endl;
            }
            //cout << j << endl;
        }
    }
    return maxcount;
}

int main()
{
    Problem14();

    int pause;
    cin >> pause;
    return 0;
}

