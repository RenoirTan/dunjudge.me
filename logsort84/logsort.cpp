#include <bits/stdc++.h>
using namespace std;

int binarySearch(
    int numbers[],
    int start,
    int finish,
    int target)
{
    if (finish <= start)
        if (target > numbers[start])
            return start + 1;
        else
            return start;

    int middleIndex = (start + finish) / 2;
    if (numbers[middleIndex] == target)
        return middleIndex + 1;
    else if (numbers[middleIndex] > target)
        return binarySearch(
            numbers,
            start,
            middleIndex - 1,
            target);
    else
        return binarySearch(
            numbers,
            middleIndex + 1,
            finish,
            target);
}

void insertionSort(int numbers[], size_t total)
{
    for (size_t index = 0; index < total; index++) {
        int target = numbers[index];
        int location = binarySearch(numbers, 0, total - 1, numbers[index]);
        size_t mutindex = index;
        while (location < mutindex) {
            numbers[mutindex] = numbers[mutindex-1];
            mutindex--;
        }
        numbers[mutindex] = target;
    }
}

int main()
{
    size_t total;
    cin >> total;
    int numbers[total];
    for (size_t i  = 0; i < total; i++) {
        cin >> numbers[i];
    }
    insertionSort(numbers, total);
    for (size_t i = 0; i < total; i++) {
        cout << numbers[i];
        if (i < total - 1)
            cout << '\n';
    }
}