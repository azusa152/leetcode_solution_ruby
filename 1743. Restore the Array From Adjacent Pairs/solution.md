# Intuition
<!-- Describe your first thoughts on how to solve this problem. -->
First, store the adjacent_pairs in a hashmap. Then, identify either the leftmost or rightmost element—this will be the value that appears only once in the hash. Use this element to find the next element in the hash and continue building the sequence.
# Complexity
- Time complexity:
O(n)

- Space complexity:
O(n)