def solution(x):
    answer = True
    x_str = str(x)
    num_list = []
    for num in x_str:
        num_list.append(int(num))
    if x % sum(num_list) == 0:
        answer = True
    else:
        answer = False
    return answer

# 형변환을 할때는 헷갈리지 않도록 별도로 변수지정 하는게 좋은것 같다.
# 코드를 짜는 입장에서도, 읽는 입장에서도 헷갈리지 않게끔 코드를 짜자.
