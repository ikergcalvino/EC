#define N 4096

struct fusion {
    float a, c;
    int b;
};

struct fusion fusion_array[N];
int i;

int main() {
    for (i = 0; i < N; i++)
        fusion_array[i].c = fusion_array[i].a + fusion_array[i].b;
}
