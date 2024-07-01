# 0 떼기

# 문제 설명
# 정수로 이루어진 문자열 n_str이 주어질 때, n_str의 가장 왼쪽에 처음으로 등장하는 0들을 뗀 문자열을 return하도록 solution 함수를 완성해주세요.

# 제한사항
# 2 ≤ n_str ≤ 10
# n_str이 "0"으로만 이루어진 경우는 없습니다.
# 입출력 예
# n_str	    result
# "0010"	"10"
# "854020"	"854020"

# 답
def solution(n_str):
    return str(int(n_str))

# 약간 야매로 풀어봤다. 아래는 다른 방식

def solution(n_str):
    return n_str.lstrip('0')

# lstrip : 문자열에 왼쪽 공백이나 인자가된 문자열의 모든 조합을 제거, rstrip와 strip도 있다.

def solution(n_str):
    for i in range(len(n_str)):
        if n_str[i] != "0":
            return n_str[i:]
        
        
        
        
        
        
        
        
        
        
        
        
# 자바로 푼 문제를 파이썬으로 풀어봤다.
# ad 제거하기

def solution(strArr):
    answer = []
    for i in strArr:
        if "ad" not in i:
            answer.append(i)
    return answer

# 파이썬은 선녀다.