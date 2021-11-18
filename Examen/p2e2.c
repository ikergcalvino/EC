#include <stdio.h>
#define N 2000

int i, j;
float a[N][N], t;

int main() {
    for (i = 1; i < (N - 1); i++)
        for (j = 1; j < (N - 1); j++)
            a[j][i] = a[j + 1][i - 1];
}
