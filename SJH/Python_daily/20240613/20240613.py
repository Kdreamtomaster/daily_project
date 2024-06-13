# 접미사인지 확인하기

# 문제 설명
# 어떤 문자열에 대해서 접미사는 특정 인덱스부터 시작하는 문자열을 의미합니다. 
# 예를 들어, "banana"의 모든 접미사는 "banana", "anana", "nana", "ana", "na", "a"입니다.
# 문자열 my_string과 is_suffix가 주어질 때, 
# is_suffix가 my_string의 접미사라면 1을, 아니면 0을 return 하는 solution 함수를 작성해 주세요.

# 제한사항
# 1 ≤ my_string의 길이 ≤ 100
# 1 ≤ is_suffix의 길이 ≤ 100
# my_string과 is_suffix는 영소문자로만 이루어져 있습니다.
# 입출력 예
# my_string	is_suffix	result
# "banana"	"ana"	    1
# "banana"	"nan"	    0
# "banana"	"wxyz"	    0
# "banana"	"abanana"	0

# 답
def solution(my_string, is_suffix):
    mystr = []
    s = ''
    for i in range(len(my_string)):
        for u in my_string[i:]:
            s += u
        mystr.append(s)
        s = ''
    if is_suffix in mystr:
        return 1
    else:
        return 0
    
# 고생해서 풀었더니 쉬운 방법이 있더라...
# 전날 접두사 문제 풀어서 접미사 문제 풀었는데
# startswith(), endswith()라는 것이 있더라
# 접두사인지 접미사인지 확인해주는 거라 이거 하나 적었으면 1분만에 풀었을텐데..
# 몰랐으니 공부해야지