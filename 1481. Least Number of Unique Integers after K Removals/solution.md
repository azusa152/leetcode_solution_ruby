# Intuition
<!-- Describe your first thoughts on how to solve this problem. -->
Create a hash with the numbers as keys and their counts as values. Then, sort this hash by its values and attempt to deduct from t. Finally, select the entries from the hash where the count is greater than 0.

# Complexity
- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->
O(n + m * log(m))
- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->
O(m)