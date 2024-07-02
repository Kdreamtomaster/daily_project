def solution(n):
    answer = 0
    sum_num = 0
    n = str(n)
    for num in n:
        sum_num += int(num)
    answer = sum_num


    return answer

# 무조건 쓰기전에 선언은 해야한다. 