def solution(s):
    answer = 0
    if "+" in s:
        answer = int(s.replace("+",""))        
    elif "-" in s:
        answer= int(s)
    else:
        answer=int(s)
    return answer

# string은 immutable(불변 자료형인거 잊지말자)
# https://school.programmers.co.kr/learn/courses/30/lessons/12925