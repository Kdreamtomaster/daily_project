# 정수 찾기

# 문제 설명
# 정수 리스트 num_list와 찾으려는 정수 n이 주어질 때, 
# num_list안에 n이 있으면 1을 없으면 0을 return하도록 solution 함수를 완성해주세요.

# 제한사항
# 3 ≤ num_list의 길이 ≤ 100
# 1 ≤ num_list의 원소 ≤ 100
# 1 ≤ n ≤ 100

# 답
def solution(num_list, n):
    if n in num_list:
        return 1
    else:
        return 0
    
# 시간 상 오늘은 쉬운 문제 하나만