#define N 4096
float a[N], c[N];
int i, b[N];

int main() {
    for (i = 0; i < N; i++)
        c[i] = a[i] + b[i];
}
