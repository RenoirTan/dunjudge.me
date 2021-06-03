#include <bits/stdc++.h>
using namespace std;

int lis(const int numbers[], const int length)
{
    if (length <= 1) return length;
    // subsequences[i] is the element at which a subsequence of length `i`
    // terminates
    //
    // If multiple subsequences arise, the one that ends in the smallest number
    // is used
    vector<int> subsequences(length + 1, INT32_MAX);
    // Because any LIS is at least 1 element long, case 0 must be safely
    // ignored.
    //
    // This can be done by setting case 0 to the smallest number possible, so
    // that it will not be replaced
    subsequences[0] = INT32_MIN;

    // Loop through the array of numbers
    for (int i = 0; i < length; i++) {
        // Loop through each ending of a subsequence
        // ignoring case 0 in the process (impossible)
        for (int j = 1; j <= length; j++) {
            // Should be easy to visualise this in your head
            //
            // The subsequences vector can be represented by this:
            // 0: NIL
            // 1: 0
            // 2:   2
            // 3:     6
            //
            // and can be extrapolated to this:
            // 0: NIL
            // 1: 0
            // 2: 0 2
            // 3: 0 2 6
            // 
            // As can be seen, the ending numbers of the previous subsequences
            // can be combined to give the complete subsequence of one of the
            // subsequences.
            //
            // Hence, there is no need to store the entire subsequence and
            // comparisons can be made by checking the ending number before
            // it
            if (
                subsequences[j - 1] < numbers[i] &&
                numbers[i] < subsequences[j]
            )
                subsequences[j] = numbers[i];
        }
    }

    int result = 0;
    for (int len = 0; len < length; len++) {
        // The length of the LIS will be replaced as we move upwards
        // 
        // Since numbers are cascadingly added to the end of each LIS down the
        // line, we can be assured that we will get the correct maximum answer
        if (subsequences[len] < INT32_MAX)
            result = len;
    }

    return result;
}

int main()
{
    int n;
    cin >> n;
    int numbers[n];
    int number;
    for (int i = 0; i < n; i++)
    {
        cin >> number;
        numbers[i] = number;
    };
    cout << lis(numbers, n);
    return 0;
};