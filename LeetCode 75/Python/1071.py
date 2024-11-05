# 1071. Greatest Common Divisor of Strings
# Easy
# For two strings s and t, we say "t divides s" if and only 
# if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

# Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

# Example 1:

# Input: str1 = "ABCABC", str2 = "ABC"
# Output: "ABC"


# SOLUTION 
class Solution(object):
    def gcdOfStrings(self, str1, str2):
        """
        :type str1: str
        :type str2: str
        :rtype: str
        """
        # Check if str1 and str2 have the same repeated pattern
        if str1 + str2 != str2 + str1:
            return ""
        
        # Custom function to calculate GCD of two numbers
        def gcd(a, b):
            while b:
                a, b = b, a % b
            return a
        
        # Find the greatest common divisor of the lengths of str1 and str2
        gcd_length = gcd(len(str1), len(str2))
        
        # The largest string that divides both is the substring from 0 to gcd_length
        return str1[:gcd_length]
