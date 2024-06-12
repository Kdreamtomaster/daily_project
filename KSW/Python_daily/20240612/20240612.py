def solution(money):
    answer = []
    money=int(money)
    americano_num= money//5500
    change= money % 5500
    answer.append(americano_num)
    answer.append(change)
    return answer

# https://school.programmers.co.kr/learn/courses/30/lessons/120819
# 기계적으로 하루에 한문제씩 하는데 주말에라도 재밌는 문제를 붙잡고 풀고 싶다.
# 쉬운문제는 쉬운 문제대로 풀고 재밌는 문제는 계속 들고다니자. 뭘 풀어볼까나..
