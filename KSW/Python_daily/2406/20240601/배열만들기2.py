def solution(l, r):
    answer = []
    # 일단 스트링으로 변환시켜서 5와 0 만 있는 경우만 추린다.
    # 위같은 경우 반복문을 무조건 처음부터 끝까지 돌려야함 
    # 규칙성은 없나?  1, 10, 100, 101 110, 111 -> 2진법 처럼 뽑힌다
    # 5진법으로 수를 나타내면 그러면 10과 20은,  20, 40 으로 2배가 된다. 다만 그사이에 10, 100 이 없을 뿐
    # 가장 작은 수와 가장 큰수를 기준으로 삼는 방법은 없나. 그 둘만 정해지면 수 개수는 정해진다. 
    # r 이 1000000 인경우 new_r = 2000000 
    # 어차피 제일 큰수는 앞자리에서 결정나므로 1111111 
    # 범위중 제일 작은 수를 15000 이라하면
    # 30000 -> 11111이 제일 작은 수 
    # 100000~111111  2^5= 32 >> 이게 수를 카운팅 할때 어떻게 해야하나 
    
    # 일단 지금 떠오르는 방법으로~
    # 5로 나눠서 2~4를 str 해서 1 or 0 in 조건으로 돌려?
    # 반복문의 반복횟수를 1/5 로 줄이는 것을 1차 목표로함 
    new_l= l//5
    new_r= r//5
    for number in range(new_l,new_r+1):
        number_set=set(str(number))
        if "0" in number_set or "1" in number_set:
            if "1" in number_set and "0" not in number_set:
                number_set.remove("1")
                if len(number_set) == 0:
                    answer.append(number*5)
            elif "0" in number_set and "1" in number_set:
                number_set.remove("0")
                number_set.remove("1")
                if len(number_set) == 0:
                    answer.append(number*5)
                    # 반복횟수 줄이는것만 신경써서 5로 나눴던걸 다시 5곱해주는걸 잊어서 틀렸었음

    if len(answer) == 0:
        answer = [-1]
    return answer