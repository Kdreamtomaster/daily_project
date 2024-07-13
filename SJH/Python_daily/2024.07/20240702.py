# 문자열 정수의 합

# 문제 설명
# 한 자리 정수로 이루어진 문자열 num_str이 주어질 때, 각 자리수의 합을 return하도록 solution 함수를 완성해주세요.

# 제한사항
# 3 ≤ num_str ≤ 100
# 입출력 예
# num_str	    result
# "123456789"	45
# "1000000"     1

# 답
def solution(num_str):
    answer = 0
    for i in range(len(num_str)):
        answer += int(num_str[i])
    return answer