#include <bitset>

class Solution {
public:
    vector<int> countBits(int n) {

        std::vector<int> ans(n + 1, 0); // Initialize vector with n+1 elements set to 0

        for (int i = 0; i <= n; ++i) {
            std::bitset<32> binary(i); // Create a bitset for the number i
            ans[i] = binary.count();   // Count the number of 1's in the binary representation
        }

        return ans;
    }
};