# 문자열 뒤집기

# 문제 설명
# 문자열 my_string이 매개변수로 주어집니다. my_string을 거꾸로 뒤집은 문자열을 return하도록 solution 함수를 완성해주세요.

# 제한사항
# 1 ≤ my_string의 길이 ≤ 1,000
# 입출력 예
# my_string	return
# "jaron"	"noraj"
# "bread"	"daerb"

# 답
def solution(my_string):
    return ''.join(reversed(my_string))

# def solution(my_string):
#     return my_string[::-1]

#왠지 reverse 함수가 있을 거 같아서 검색해보니 진짜 있었다.