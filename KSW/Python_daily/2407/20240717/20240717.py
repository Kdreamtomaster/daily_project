



# 20. Valid Parentheses
# Easy
# Topics
# Companies
# Hint
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
 

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false
 

# Constraints:

# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

class Solution:
    def isValid(self, s: str) -> bool:
        braket_dic={")":"(", "}":"{","]":"[" }
        stack=[]
        for braket in s:
            if braket in ["(","{","["]:
                stack.append(braket)
            else:
                if len(stack) == 0:
                    return False
                elif braket_dic[braket] == stack[-1]:
                    stack.pop()
                else:
                    return False
        return not stack
    


# 바로 이전 기호와 같은 종류의 괄호여야 한다는 조건에 유의해야했음

# 조건문 의 코드길이를 줄이고자 

# 괄호 종류에 대하여 닫는괄호를 키, 여는 괄호를 밸류로 하는 딕셔너리를 사전에 만듬