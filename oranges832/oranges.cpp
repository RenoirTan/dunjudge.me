#include <iostream>
using namespace std;

void swap(int *one, int *two)
{
    if (*one > *two) {
        int temp = *one;
        *one = *two;
        *two = temp;
    }
}

int main()
{
    int trees;
    cin >> trees;
    int orchard[trees];
    for (int i = 0; i < trees; i++) {
        cin >> orchard[i];
    }
    int one = 0, two = 0;
    for (int i = 0; i < trees; i++) {
        if (orchard[i] > orchard[one])
            one = i;
    }
    for (int i = 0; i < trees; i++) {
        if (i == one)
            continue;
        if (orchard[i] > orchard[two])
            two = i;
    }
    swap(&one, &two);
    cout << one+1 << ' ' << two+1;
    return 0;
}