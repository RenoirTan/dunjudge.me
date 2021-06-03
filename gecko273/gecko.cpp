#include <bits/stdc++.h>
using namespace std;

int maxReward(
    vector<vector<int>> &wall,
    const size_t height,
    const size_t width)
{
    if (height == 1) {
        return *max_element(wall.at(0).begin(), wall.at(0).end());
    }
    // The maximum reward for each of the paths to the row above
    int previousMaximum[width];
    // Maximum reward for the current row
    int currentRow[width];
    // Init previousMaximum with the first row
    for (size_t i = 0; i < width; i++) {
        previousMaximum[i] = wall[0][i];
    }

    // Go down each row
    for (size_t i = 1; i < height; i++) {
        fill(currentRow, currentRow+width, 0); // Reset
        // Get the maximum reward for each part in the row by adding the parts
        // above and the reward at this part
        for (size_t j = 0; j < width; j++) {
            if (j != 0) {
                currentRow[j] = max(
                    currentRow[j],
                    wall[i][j] + previousMaximum[j-1]
                );
            }
            currentRow[j] = max(
                currentRow[j],
                wall[i][j] + previousMaximum[j]
            );
            if (j != width-1) {
                currentRow[j] = max(
                    currentRow[j],
                    wall[i][j] + previousMaximum[j+1]
                );
            }
        }
        // Use the new maximum values as the next previousMaximum
        copy(currentRow, currentRow+width, previousMaximum);
    }
    return *max_element(previousMaximum, previousMaximum+width);

}

int main()
{
    int height, width;
    cin >> height >> width;
    vector<vector<int>> wall(height);
    for (size_t i = 0; i < height; i++) {
        wall[i] = vector<int>(width);
        for (size_t j = 0; j < width; j++) {
            cin >> wall[i][j];
        }
    }
    cout << maxReward(wall, height, width);
    return 0;
}