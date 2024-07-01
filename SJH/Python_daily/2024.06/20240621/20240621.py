# 원소들의 곱과 합

# 문제 설명
# 정수가 담긴 리스트 num_list가 주어질 때, 
# 모든 원소들의 곱이 모든 원소들의 합의 제곱보다 작으면 1을 크면 0을 return하도록 solution 함수를 완성해주세요.

# 제한사항
# 2 ≤ num_list의 길이 ≤ 10
# 1 ≤ num_list의 원소 ≤ 9

# 입출력 예
# num_list	        result
# [3, 4, 5, 2, 1]	1
# [5, 7, 8, 3]	    0

# 답
def solution(num_list):
    x = num_list[0]
    y = 0
    for i in range(1, len(num_list)):
        x = x * num_list[i]
    for j in num_list:
        y += j
    if x < y ** 2:
        return 1
    else:
        return 0
    
# 오늘은 한 문제만