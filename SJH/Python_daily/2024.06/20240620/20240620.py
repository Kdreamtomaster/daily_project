# 이어 붙인 수

# 문제 설명
# 정수가 담긴 리스트 num_list가 주어집니다. 
# num_list의 홀수만 순서대로 이어 붙인 수와 짝수만 순서대로 이어 붙인 수의 합을 
# return하도록 solution 함수를 완성해주세요.

# 제한사항
# 2 ≤ num_list의 길이 ≤ 10
# 1 ≤ num_list의 원소 ≤ 9
# num_list에는 적어도 한 개씩의 짝수와 홀수가 있습니다.
# 입출력 예
# num_list	        result
# [3, 4, 5, 2, 1]	393
# [5, 7, 8, 3]	    581

# 답
def solution(num_list):
    even = ''
    odd = ''
    for i in num_list:
        if i % 2 == 1:
            odd += str(i)
        else:
            even += str(i)
    return int(even) + int(odd)

# 프로그래머스에 sql문제는 적은데 python문제는 많아서 요즘 한 2, 3문제 풀고있다.
# 그 중에서 어려운 문제만 올리려고 한다.