// projectEulerProbs.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <Windows.h>
using namespace std;

void Problem31()
{
    int pen = 0;
    int numc = 1;
    int M = 200;
    for (int c100 = pen; c100 <= M; c100 += 100)
    {
        for (int c50 = c100; c50 <= M; c50 += 50)
        {
            cout << "C50= " << c50 << endl;
            for (int c20 = c50; c20 <= M; c20 += 20)
            {
                for (int c10 = c20; c20 <= M ; c20 += 20)
                {
                    for (int c10 = c20; c10 <= M; c10 += 10)
                    {
                        for (int c5 = c10; c5 <= M; c5 += 5)
                        {
                            for (int c2 = c5; c2 <= M; c2 += 2)
                            {
                                numc++;
                            }
                        }
                    }
                }
            }
        }
    }
    cout << numc;
}

int main()
{
    Problem31();

    int c;
    cin >> c;
	return 0;
}

