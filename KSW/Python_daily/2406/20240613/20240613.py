def solution(s1, s2):
    answer = 0
    for s1_str in s1 :
        if s1_str in s2:
            answer+=1
    return answer
# 예외사항 자체가 없는 문제였다. 
# 다만 3일 정도 잡고 정답률 60퍼 이하 문제를 붙잡아 보자. 
# https://school.programmers.co.kr/learn/courses/30/lessons/161990 내일부터 이문제 시도해볼것 
