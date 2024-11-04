# 1768. Merge Strings Alternately

# You are given two strings word1 and word2. Merge the strings by adding letters 
# in alternating order, starting with word1. If a string is longer than the other, 
# append the additional letters onto the end of the merged string.
# Return the merged string.

# Example 1:

# Input: word1 = "abc", word2 = "pqr"
# Output: "apbqcr"
# Explanation: The merged string will be merged as so:
# word1:  a   b   c
# word2:    p   q   r
# merged: a p b q c r


# ROUGH WORK
def mergeAlternately():
    word1 = "abc"
    word2 = "pqr"
    merged = []
    min_length = min(len(word1), len(word2))

       # Add characters in alternating order
    for i in range(min_length):
        merged.append(word1[i])
        merged.append(word2[i])
    
    # Append remaining characters from the longer string
    if len(word1) > min_length:
        merged.append(word1[min_length:])
    if len(word2) > min_length:
        merged.append(word2[min_length:])
    
    # Join list to form the final string
    return ''.join(merged)

print (mergeAlternately())


# SOLUTION:
class Solution(object):
    def mergeAlternately(self, word1, word2):
        """
        :type word1: str
        :type word2: str
        :rtype: str
        """
        # Initializing string to store erged characters
        merged = []

        # Finding the length of the shorter (word)
        min_length = min(len(word1), len(word2))

        # Add characters in alternating order
        for i in range(min_length):
            merged.append(word1[i])
            merged.append(word2[i])
    
        # Append remaining characters from the longer string
        if len(word1) > min_length:
            merged.append(word1[min_length:])

        if len(word2) > min_length:
            merged.append(word2[min_length:])
    
        # Join list to form the final string
        return ''.join(merged)       