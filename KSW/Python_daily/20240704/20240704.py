def solution(n):
    answer = 0
    a = int(n ** 0.5)
    b = n ** 0.5
    if a - b != 0:
        answer = 2
    else :
        answer = 1
    return answer

# 처음엔 1부터 반복문 돌릴까하는 생각을 해봤다가 그건 아니다 싶어서 제곱근 관련해서 찾아보고 풀었다.